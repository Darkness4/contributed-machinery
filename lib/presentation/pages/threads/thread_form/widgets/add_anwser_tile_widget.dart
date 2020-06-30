import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/misc/answser_presentation_classes.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class AddAnswerTile extends StatelessWidget {
  const AddAnswerTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreadFormBloc, ThreadFormState>(
      builder: (context, state) {
        return ListTile(
          title: const Text('Add a answer'),
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.add),
          ),
          onTap: () {
            context.formAnswers =
                context.formAnswers.plusElement(AnswerPrimitive.empty());
            context
                .bloc<ThreadFormBloc>()
                .add(ThreadFormEvent.answersChanged(context.formAnswers));
          },
        );
      },
    );
  }
}
