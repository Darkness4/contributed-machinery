import 'package:contributed_machinery/application/threads/answers/answer_form/answer_form_bloc.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
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

    return BlocConsumer<AnswerFormBloc, AnswerFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.answer.content.getOrCrash();
      },
      buildWhen: (p, c) => p.answer.content != c.answer.content,
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
            maxLength: RequestContent.maxLength,
            onChanged: (value) => context
                .bloc<AnswerFormBloc>()
                .add(AnswerFormEvent.contentChanged(value)),
            validator: (_) => context
                .bloc<AnswerFormBloc>()
                .state
                .answer
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
