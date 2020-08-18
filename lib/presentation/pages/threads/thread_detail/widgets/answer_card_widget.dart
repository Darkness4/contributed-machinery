import 'package:auto_route/auto_route.dart';
import 'package:bubble/bubble.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';
import 'package:styled_widget/styled_widget.dart';

class AnswerCard extends StatelessWidget {
  final Answer answer;

  const AnswerCard({
    Key key,
    @required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thread = context.watch<Thread>();
    final authState = context.bloc<AuthBloc>().state;
    final isSelf = authState is Authenticated &&
        authState.user.emailAddress.getOrCrash() == answer.author.getOrCrash();

    return Bubble(
      margin: const BubbleEdges.all(8.0),
      nip: isSelf ? BubbleNip.rightTop : BubbleNip.leftTop,
      color:
          isSelf ? Theme.of(context).primaryColor : Theme.of(context).cardColor,
      child: InkWell(
        onTap: () {
          final authBlocState = context.bloc<AuthBloc>().state;

          if (authBlocState is Authenticated &&
              authBlocState.user.emailAddress.getOrCrash() ==
                  answer.author.getOrCrash()) {
            context.navigator.push(
              Routes.answerFormPage,
              arguments: AnswerFormPageArguments(
                editedAnswer: answer,
                editedThread: thread,
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data: isSelf ? ThemeData.dark() : ThemeData.light(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(answer.author.getOrCrash())
                    .textStyle(Theme.of(context).textTheme.caption)
                    .textColor(isSelf
                        ? Colors.white
                        : Theme.of(context).textTheme.caption.color),
                MarkdownBody(data: answer.content.getOrCrash()),
                Text("Published : ${answer.published.getOrCrash().toLocal()}")
                    .textAlignment(TextAlign.end)
                    .textStyle(Theme.of(context).textTheme.caption)
                    .textColor(isSelf
                        ? Colors.white
                        : Theme.of(context).textTheme.caption.color),
                Text("Updated : ${answer.updated.getOrCrash().toLocal()}")
                    .textAlignment(TextAlign.end)
                    .textStyle(Theme.of(context).textTheme.caption)
                    .textColor(isSelf
                        ? Colors.white
                        : Theme.of(context).textTheme.caption.color),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
