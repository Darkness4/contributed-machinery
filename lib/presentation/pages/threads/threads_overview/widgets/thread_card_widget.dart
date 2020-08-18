import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_actor/thread_actor_bloc.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThreadCard extends StatelessWidget {
  final Thread thread;

  const ThreadCard({
    Key key,
    @required this.thread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {
          context.navigator.push(
            Routes.threadDetailPage,
            arguments: ThreadDetailPageArguments(thread: thread),
          );
        },
        onLongPress: () {
          final authBlocState = context.bloc<AuthBloc>().state;

          if (authBlocState is Authenticated &&
              authBlocState.user.emailAddress.getOrCrash() ==
                  thread.request.author.getOrCrash()) {
            final threadActorBloc = context.bloc<ThreadActorBloc>();
            showDialog(
              context: context,
              builder: (context) {
                return BlocProvider.value(
                  value: threadActorBloc,
                  child: AlertDialog(
                    title: const Text('Selected thread:'),
                    content: Text(
                      thread.request.content.getOrCrash(),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('CANCEL'),
                      ),
                      FlatButton(
                        onPressed: () {
                          threadActorBloc.add(ThreadActorEvent.deleted(thread));
                          Navigator.pop(context);
                        },
                        child: const Text('DELETE'),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                thread.request.title.getOrCrash(),
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                thread.request.author.getOrCrash(),
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                "Published : ${thread.request.published.getOrCrash().toLocal()}",
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.end,
              ),
              Text(
                "Updated : ${thread.request.updated.getOrCrash().toLocal()}",
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
