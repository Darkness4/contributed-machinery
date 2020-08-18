import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/application/search/search_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_actor/thread_actor_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_watcher/thread_watcher_bloc.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:contributed_machinery/presentation/widgets/search_app_bar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/threads_overview_body_widget.dart';

class ThreadsOverviewPage extends StatefulWidget implements AutoRouteWrapper {
  const ThreadsOverviewPage();

  @override
  _ThreadsOverviewPageState createState() => _ThreadsOverviewPageState();

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
          BlocProvider(
            create: (_) => getIt<SearchBloc>(),
          ),
        ],
        child: this,
      );
}

class _ThreadsOverviewPageState extends State<ThreadsOverviewPage> {
  TextEditingController textEditingController;
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) =>
                  context.navigator.replace(Routes.signInPage),
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
        backgroundColor: Colors.blue[800],
        appBar: AppBar(
          title: const Text('Threads'),
          bottom: SearchAppBar(
            controller: textEditingController,
            focusNode: focusNode,
          ),
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
        ),
        body: GestureDetector(
          onTap: focusNode.unfocus,
          child: ThreadsOverviewBody(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.navigator.push(
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
  void dispose() {
    textEditingController?.dispose();
    focusNode?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }
}
