import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/threads/thread_actor/thread_actor_bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
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
      //! For showcasing the effects of clipBehavior
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          ExtendedNavigator.ofRouter<Router>().pushNamed(
            Routes.threadFormPage,
            arguments: ThreadFormPageArguments(editedThread: thread),
          );
        },
        onLongPress: () {
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
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                thread.request.title.getOrCrash(),
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                thread.request.content.getOrCrash(),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnswerDisplay extends StatelessWidget {
  final Answer answer;

  const AnswerDisplay({Key key, this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(answer.author.getOrCrash()),
        Text(answer.content.getOrCrash()),
      ],
    );
  }
}
