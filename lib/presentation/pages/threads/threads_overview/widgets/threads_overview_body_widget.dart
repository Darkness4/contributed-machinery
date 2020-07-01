import 'package:contributed_machinery/application/search/search_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_watcher/thread_watcher_bloc.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/pages/threads/threads_overview/widgets/thread_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import 'critical_failure_display_widget.dart';
import 'error_thread_card_widget.dart';

class ThreadsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreadWatcherBloc, ThreadWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loadInProgress: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (threads) {
            return BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
              final filter = state.filter;
              final keywords = filter.toLowerCase().split(' ');
              final filteredThreads = threads.asList().where((thread) {
                if (filter == null || filter.isEmpty) {
                  return true;
                }
                return keywords.every((keyword) {
                  return thread.request.title
                          .getOrElse('')
                          .toLowerCase()
                          .contains(keyword) ||
                      thread.request.content
                          .getOrElse('')
                          .toLowerCase()
                          .contains(keyword);
                });
              }).toImmutableList();
              return ListView.builder(
                itemCount: filteredThreads.size,
                itemBuilder: (context, index) {
                  final thread = filteredThreads[index];
                  if (thread.failureOption.isSome()) {
                    return ErrorThreadCard(thread: thread);
                  }
                  return ThreadCard(thread: thread);
                },
              );
            });
          },
          loadFailure: (failure) {
            return CriticalFailureDisplay(failure: failure);
          },
        );
      },
    );
  }
}
