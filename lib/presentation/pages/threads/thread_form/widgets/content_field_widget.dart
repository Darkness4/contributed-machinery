import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ContentField extends HookWidget {
  const ContentField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ThreadFormBloc, ThreadFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.thread.request.content.getOrCrash();
      },
      buildWhen: (p, c) => p.thread.request.content != c.thread.request.content,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Content',
              counterText: '',
            ),
            maxLines: 8,
            textInputAction: TextInputAction.newline,
            onChanged: (value) => context
                .bloc<ThreadFormBloc>()
                .add(ThreadFormEvent.contentChanged(value)),
            validator: (_) => context
                .bloc<ThreadFormBloc>()
                .state
                .thread
                .request
                .content
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
          ),
        );
      },
    );
  }
}
