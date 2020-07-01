import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/content_field_widget.dart';
import 'widgets/preview_field_widget.dart';
import 'widgets/title_field_widget.dart';

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                // Not within a Scaffold. We have to get the TextStyle from a theme ourselves.
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ThreadFormPage extends HookWidget {
  final Thread editedThread;

  const ThreadFormPage({
    Key key,
    @required this.editedThread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThreadFormBloc>()
        ..add(ThreadFormEvent.initialized(optionOf(editedThread))),
      child: BlocConsumer<ThreadFormBloc, ThreadFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                        // Use localized strings here in your apps
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌',
                        unableToUpdate: (_) =>
                            "Couldn't update the thread. Was it deleted from another device?",
                        unexpected: (_) =>
                            'Unexpected error occured, please contact support.'),
                  ).show(context);
                },
                (_) {
                  // Can't be just a simple pop. If another route (like a Flushbar) is on top of stack, we'll need to pop even that to get to
                  // the overview page.
                  ExtendedNavigator.ofRouter<Router>().popUntil((route) =>
                      route.settings.name == Routes.threadsOverviewPage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const ThreadFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class ThreadFormPageScaffold extends StatelessWidget {
  const ThreadFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ThreadFormBloc, ThreadFormState>(
          condition: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) =>
              Text(state.isEditing ? 'Edit a thread' : 'Create a thread'),
        ),
        actions: <Widget>[
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.check),
                onPressed: () {
                  context
                      .bloc<ThreadFormBloc>()
                      .add(const ThreadFormEvent.saved());
                },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<ThreadFormBloc, ThreadFormState>(
        condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: const CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: TitleField()),
                SliverToBoxAdapter(child: ContentField()),
                SliverToBoxAdapter(child: PreviewField()),
              ],
            ),
          );
        },
      ),
    );
  }
}
