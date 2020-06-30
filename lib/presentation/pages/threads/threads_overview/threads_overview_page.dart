import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_actor/thread_actor_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_watcher/thread_watcher_bloc.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/threads_overview_body_widget.dart';

class ThreadsOverviewPage extends HookWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) => ExtendedNavigator.ofRouter<Router>()
                  .pushReplacementNamed(Routes.signInPage),
              orElse: () {},
            );
          },
        ),
        BlocListener<ThreadActorBloc, ThreadActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: state.failure.map(
                      // Use localized strings here in your apps
                      insufficientPermissions: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support.'),
                ).show(context);
              },
              orElse: () {},
            );
          },
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Threads'),
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
        ),
        body: ThreadsOverviewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.ofRouter<Router>().pushNamed(
              Routes.threadFormPage,
              arguments: ThreadFormPageArguments(editedThread: null),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<ThreadWatcherBloc>(
            create: (context) => getIt<ThreadWatcherBloc>()
              ..add(const ThreadWatcherEvent.watchAllStarted()),
          ),
          BlocProvider<ThreadActorBloc>(
            create: (context) => getIt<ThreadActorBloc>(),
          ),
        ],
        child: this,
      );
}
