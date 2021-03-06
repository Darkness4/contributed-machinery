import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentField extends StatefulWidget {
  const ContentField({
    Key key,
  }) : super(key: key);

  @override
  _ContentFieldState createState() => _ContentFieldState();
}

class _ContentFieldState extends State<ContentField> {
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
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

  @override
  void dispose() {
    textEditingController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }
}
