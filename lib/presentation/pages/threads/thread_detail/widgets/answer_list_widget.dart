import 'package:contributed_machinery/application/threads/answers/answer_watcher/answer_watcher_bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'answer_card_widget.dart';
import 'critical_failure_display_widget.dart';
import 'error_answer_card_widget.dart';

class AnswerListWidget extends StatelessWidget {
  const AnswerListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerWatcherBloc, AnswerWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final answer = state.answers[index];
                if (answer.failureOption.isSome()) {
                  return ErrorAnswerCard(answer: answer);
                }
                return AnswerCard(answer: answer);
              },
              itemCount: state.answers.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.answerFailure,
            );
          },
        );
      },
    );
  }
}