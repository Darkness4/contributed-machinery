import 'dart:ui';

import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/misc/answser_presentation_classes.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class AnswerListWidget extends HookWidget {
  const AnswerListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ThreadFormBloc, ThreadFormState>(
          // After the Initialized event
          condition: (p, c) => p.isEditing != c.isEditing,
          listener: (context, state) {
            context.formAnswers = state.thread.answers.value.fold(
              (_) => mutableListOf<AnswerPrimitive>(),
              (answerList) => answerList
                  .map((_) => AnswerPrimitive.fromDomain(_))
                  .toMutableList(),
            );
          },
        ),
      ],
      child: Consumer<FormAnswers>(
        builder: (context, formTodos, child) {
          return ImplicitlyAnimatedReorderableList<AnswerPrimitive>(
            items: context.formAnswers.asList(),
            shrinkWrap: true,
            updateDuration: const Duration(milliseconds: 50),
            removeDuration: const Duration(milliseconds: 250),
            areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
            onReorderFinished: (item, from, to, newItems) {
              context.formAnswers = newItems.toImmutableList();
              context
                  .bloc<ThreadFormBloc>()
                  .add(ThreadFormEvent.answersChanged(context.formAnswers));
            },
            itemBuilder: (context, itemAnimation, item, index) {
              return Reorderable(
                key: ValueKey(item.id),
                builder: (context, dragAnimation, inDrag) {
                  final elevation = lerpDouble(0, 8, dragAnimation.value);
                  return ScaleTransition(
                    scale: Tween<double>(begin: 1, end: 0.95)
                        .animate(dragAnimation),
                    child: AnswerTile(
                      // We have to pass in the index and not a complete TodoItemPrimitive to always get the most fresh value held in FormTodos
                      index: index,
                      elevation: elevation,
                    ),
                  );
                },
              );
            },
            updateItemBuilder: (context, itemAnimation, item) {
              return Reorderable(
                key: ValueKey(item.id),
                builder: (context, dragAnimation, inDrag) {
                  return StaticAnswerTile(
                    answer: item,
                  );
                },
              );
            },
            removeItemBuilder: (context, itemAnimation, item) {
              return Reorderable(
                key: ValueKey(item.id),
                builder: (context, dragAnimation, inDrag) {
                  return FadeTransition(
                    opacity: itemAnimation,
                    child: StaticAnswerTile(
                      answer: item,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class StaticAnswerTile extends StatelessWidget {
  final AnswerPrimitive answer;
  final double elevation;

  const StaticAnswerTile({
    Key key,
    @required this.answer,
    double elevation,
  })  : elevation = elevation ?? 0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: const <Widget>[
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Material(
          elevation: elevation,
          animationDuration: const Duration(milliseconds: 100),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              trailing: const Handle(
                child: Icon(
                  Icons.list,
                ),
              ),
              title: TextFormField(
                initialValue: answer.content,
                enabled: false,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                  counterText: '',
                  border: InputBorder.none,
                ),
                maxLength: AnswerContent.maxLength,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnswerTile extends HookWidget {
  final int index;
  final double elevation;

  const AnswerTile({
    Key key,
    @required this.index,
    double elevation,
  })  : elevation = elevation ?? 0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final answer =
        context.formAnswers.getOrElse(index, (_) => AnswerPrimitive.empty());
    final textEditingController =
        useTextEditingController(text: answer.content);

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            context.formAnswers = context.formAnswers.minusElement(answer);
            context
                .bloc<ThreadFormBloc>()
                .add(ThreadFormEvent.answersChanged(context.formAnswers));
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Material(
          elevation: elevation,
          animationDuration: const Duration(milliseconds: 100),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              trailing: const Handle(
                child: Icon(
                  Icons.list,
                ),
              ),
              title: TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Answer',
                  counterText: '',
                  border: InputBorder.none,
                ),
                maxLength: AnswerContent.maxLength,
                onChanged: (value) {
                  context.formAnswers = context.formAnswers.map((primitive) =>
                      primitive == answer
                          ? answer.copyWith(content: value)
                          : primitive);
                  context
                      .bloc<ThreadFormBloc>()
                      .add(ThreadFormEvent.answersChanged(context.formAnswers));
                },
                validator: (_) {
                  return context
                      .bloc<ThreadFormBloc>()
                      .state
                      .thread
                      .answers
                      .value
                      .fold(
                        // Failure stemming from the TodoList length should NOT be displayed by the individual TextFormFields
                        (f) => null,
                        (answerList) => answerList[index].content.value.fold(
                              (f) => f.maybeMap(
                                empty: (f) => 'Cannot be empty',
                                exceedingLength: (_) => 'Too long',
                                multiline: (_) => 'Has to be in a single line',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
