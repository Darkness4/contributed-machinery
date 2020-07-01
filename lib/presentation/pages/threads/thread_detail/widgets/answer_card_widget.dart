import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/application/threads/answers/answer_actor/answer_actor_bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

class AnswerCard extends StatelessWidget {
  final Answer answer;

  const AnswerCard({
    Key key,
    @required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thread = context.watch<Thread>();
    return Card(
      clipBehavior: Clip.antiAlias,
      //! For showcasing the effects of clipBehavior
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          final authBlocState = context.bloc<AuthBloc>().state;

          if (authBlocState is Authenticated &&
              authBlocState.user.emailAddress.getOrCrash() ==
                  answer.author.getOrCrash()) {
            ExtendedNavigator.ofRouter<Router>().pushNamed(
              Routes.answerFormPage,
              arguments: AnswerFormPageArguments(
                editedAnswer: answer,
                editedThread: thread,
              ),
            );
          }
        },
        onLongPress: () {
          final authBlocState = context.bloc<AuthBloc>().state;

          if (authBlocState is Authenticated &&
              authBlocState.user.emailAddress.getOrCrash() ==
                  answer.author.getOrCrash()) {
            final answerActorBloc = context.bloc<AnswerActorBloc>();
            showDialog(
              context: context,
              builder: (context) {
                return BlocProvider.value(
                  value: answerActorBloc,
                  child: AlertDialog(
                    title: const Text('Selected answer:'),
                    content: Text(
                      answer.content.getOrCrash(),
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
                          answerActorBloc.add(AnswerActorEvent.deletedByThread(
                              answer,
                              thread: thread));
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
                answer.author.getOrCrash(),
                style: Theme.of(context).textTheme.caption,
              ),
              MarkdownBody(
                data: answer.content.getOrCrash(),
              ),
              Text(
                "Published : ${answer.published.getOrCrash().toLocal()}",
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.end,
              ),
              Text(
                "Updated : ${answer.updated.getOrCrash().toLocal()}",
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
