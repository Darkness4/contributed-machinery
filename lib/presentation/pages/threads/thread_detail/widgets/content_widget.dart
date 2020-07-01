import 'package:auto_route/auto_route.dart';
import 'package:bubble/bubble.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thread = context.watch<Thread>();
    final authState = context.bloc<AuthBloc>().state;
    final isSelf = authState is Authenticated &&
        authState.user.emailAddress.getOrCrash() ==
            thread.request.author.getOrCrash();

    return Bubble(
      margin: const BubbleEdges.all(8.0),
      nip: isSelf ? BubbleNip.rightTop : BubbleNip.leftTop,
      color:
          isSelf ? Theme.of(context).primaryColor : Theme.of(context).cardColor,
      child: InkWell(
        onTap: () {
          ExtendedNavigator.ofRouter<Router>().pushNamed(
            Routes.threadFormPage,
            arguments: ThreadFormPageArguments(
              editedThread: thread,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Theme(
            data: isSelf ? ThemeData.dark() : ThemeData.light(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  thread.request.title.getOrCrash(),
                  style: Theme.of(context).textTheme.headline5.apply(
                        color: isSelf
                            ? Colors.white
                            : Theme.of(context).textTheme.headline5.color,
                      ),
                ),
                Text(
                  thread.request.author.getOrCrash(),
                  style: Theme.of(context).textTheme.caption.apply(
                        color: isSelf
                            ? Colors.white
                            : Theme.of(context).textTheme.caption.color,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MarkdownBody(
                    data: thread.request.content.getOrCrash(),
                  ),
                ),
                Text(
                  "Published : ${thread.request.published.getOrCrash().toLocal()}",
                  style: Theme.of(context).textTheme.caption.apply(
                        color: isSelf
                            ? Colors.white
                            : Theme.of(context).textTheme.caption.color,
                      ),
                  textAlign: TextAlign.end,
                ),
                Text(
                  "Updated : ${thread.request.updated.getOrCrash().toLocal()}",
                  style: Theme.of(context).textTheme.caption.apply(
                        color: isSelf
                            ? Colors.white
                            : Theme.of(context).textTheme.caption.color,
                      ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
