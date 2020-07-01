import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final thread = context.watch<Thread>();

    return Card(
      clipBehavior: Clip.antiAlias,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                thread.request.title.getOrCrash(),
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                thread.request.author.getOrCrash(),
                style: Theme.of(context).textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MarkdownBody(data: thread.request.content.getOrCrash()),
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
