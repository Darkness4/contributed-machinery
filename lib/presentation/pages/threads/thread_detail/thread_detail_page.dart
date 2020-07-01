import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/application/threads/answers/answer_actor/answer_actor_bloc.dart';
import 'package:contributed_machinery/application/threads/answers/answer_watcher/answer_watcher_bloc.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'widgets/answer_list_widget.dart';
import 'widgets/content_widget.dart';

class ThreadDetailPage extends HookWidget implements AutoRouteWrapper {
  final Thread thread;

  const ThreadDetailPage({
    Key key,
    @required this.thread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ThreadDetailPageScaffold();
  }

  @override
  Widget wrappedRoute(BuildContext context) => MultiProvider(
        providers: [
          BlocProvider<AnswerWatcherBloc>(
            create: (context) => getIt<AnswerWatcherBloc>()
              ..add(AnswerWatcherEvent.watchAllByThreadStarted(thread)),
          ),
          BlocProvider<AnswerActorBloc>(
            create: (context) => getIt<AnswerActorBloc>(),
          ),
          Provider(create: (_) => thread),
        ],
        child: this,
      );
}

class ThreadDetailPageScaffold extends StatelessWidget {
  const ThreadDetailPageScaffold({
    Key key,
  }) : super(key: key);

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
        BlocListener<AnswerActorBloc, AnswerActorState>(
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
          title: Text(context.watch<Thread>().request.title.getOrCrash()),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: const [
                Expanded(child: ContentWidget()),
              ],
            ),
            const Divider(),
            const Expanded(child: Scrollbar(child: AnswerListWidget())),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.ofRouter<Router>().pushNamed(
              Routes.answerFormPage,
              arguments: AnswerFormPageArguments(
                editedAnswer: null,
                editedThread: context.read<Thread>(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
