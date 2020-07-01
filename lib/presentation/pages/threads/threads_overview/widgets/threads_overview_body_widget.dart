import 'package:contributed_machinery/application/threads/thread_watcher/thread_watcher_bloc.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/pages/threads/threads_overview/widgets/thread_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'critical_failure_display_widget.dart';
import 'error_thread_card_widget.dart';

class ThreadsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreadWatcherBloc, ThreadWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final thread = state.threads[index];
                if (thread.failureOption.isSome()) {
                  return ErrorThreadCard(thread: thread);
                }
                return ThreadCard(thread: thread);
              },
              itemCount: state.threads.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.threadFailure,
            );
          },
        );
      },
    );
  }
}
