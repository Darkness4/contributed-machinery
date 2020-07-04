import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitleField extends StatefulWidget {
  const TitleField({
    Key key,
  }) : super(key: key);

  @override
  _TitleFieldState createState() => _TitleFieldState();
}

class _TitleFieldState extends State<TitleField> {
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThreadFormBloc, ThreadFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.thread.request.title.getOrCrash();
      },
      buildWhen: (p, c) => p.thread.request.title != c.thread.request.title,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Title',
              counterText: '',
            ),
            maxLength: RequestTitle.maxLength,
            onChanged: (value) => context
                .bloc<ThreadFormBloc>()
                .add(ThreadFormEvent.titleChanged(value)),
            validator: (_) => context
                .bloc<ThreadFormBloc>()
                .state
                .thread
                .request
                .title
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
