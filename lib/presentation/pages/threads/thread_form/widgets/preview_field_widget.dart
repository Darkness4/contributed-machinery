import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PreviewField extends StatelessWidget {
  const PreviewField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreadFormBloc, ThreadFormState>(
      condition: (p, c) =>
          p.thread.request.content != c.thread.request.content ||
          p.thread.request.title != c.thread.request.title,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Preview"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.thread.request.title.getOrElse(''),
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                state.thread.request.author.getOrElse(''),
                                style: Theme.of(context).textTheme.caption,
                              ),
                              MarkdownBody(
                                data:
                                    state.thread.request.content.getOrElse(''),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
