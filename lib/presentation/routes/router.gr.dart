// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/presentation/pages/splash/splash_page.dart';
import 'package:contributed_machinery/presentation/pages/sign_in/sign_in_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/threads_overview/threads_overview_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/thread_form_page.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_detail/thread_detail_page.dart';
import 'package:contributed_machinery/presentation/routes/page_transitions.dart';
import 'package:contributed_machinery/presentation/pages/threads/answer_form/answer_form_page.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const threadsOverviewPage = '/threads-overview-page';
  static const threadFormPage = '/thread-form-page';
  static const threadDetailPage = '/thread-detail-page';
  static const answerFormPage = '/answer-form-page';
  static const all = {
    splashPage,
    signInPage,
    threadsOverviewPage,
    threadFormPage,
    threadDetailPage,
    answerFormPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.threadsOverviewPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ThreadsOverviewPage().wrappedRoute(context),
          settings: settings,
        );
      case Routes.threadFormPage:
        if (hasInvalidArgs<ThreadFormPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ThreadFormPageArguments>(args);
        }
        final typedArgs = args as ThreadFormPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => ThreadFormPage(
              key: typedArgs.key, editedThread: typedArgs.editedThread),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.threadDetailPage:
        if (hasInvalidArgs<ThreadDetailPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ThreadDetailPageArguments>(args);
        }
        final typedArgs = args as ThreadDetailPageArguments;
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              ThreadDetailPage(key: typedArgs.key, thread: typedArgs.thread)
                  .wrappedRoute(context),
          settings: settings,
          transitionsBuilder: PageTransitions.slideRight,
          transitionDuration: const Duration(milliseconds: 300),
        );
      case Routes.answerFormPage:
        if (hasInvalidArgs<AnswerFormPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<AnswerFormPageArguments>(args);
        }
        final typedArgs = args as AnswerFormPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => AnswerFormPage(
                  key: typedArgs.key,
                  editedAnswer: typedArgs.editedAnswer,
                  editedThread: typedArgs.editedThread)
              .wrappedRoute(context),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//ThreadFormPage arguments holder class
class ThreadFormPageArguments {
  final Key key;
  final Thread editedThread;
  ThreadFormPageArguments({this.key, @required this.editedThread});
}

//ThreadDetailPage arguments holder class
class ThreadDetailPageArguments {
  final Key key;
  final Thread thread;
  ThreadDetailPageArguments({this.key, @required this.thread});
}

//AnswerFormPage arguments holder class
class AnswerFormPageArguments {
  final Key key;
  final Answer editedAnswer;
  final Thread editedThread;
  AnswerFormPageArguments(
      {this.key, @required this.editedAnswer, @required this.editedThread});
}
