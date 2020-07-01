import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/threads/thread_actor/thread_actor_bloc.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
