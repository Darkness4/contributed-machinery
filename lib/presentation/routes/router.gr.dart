// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/threads/answers/answer.dart';
import '../../domain/threads/thread.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/threads/answer_form/answer_form_page.dart';
import '../pages/threads/thread_detail/thread_detail_page.dart';
import '../pages/threads/thread_form/thread_form_page.dart';
import '../pages/threads/threads_overview/threads_overview_page.dart';
import 'router.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String threadsOverviewPage = '/threads-overview-page';
  static const String threadFormPage = '/thread-form-page';
  static const String threadDetailPage = '/thread-detail-page';
  static const String answerFormPage = '/answer-form-page';
  static const all = <String>{
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
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.threadsOverviewPage, page: ThreadsOverviewPage),
    RouteDef(Routes.threadFormPage, page: ThreadFormPage),
    RouteDef(Routes.threadDetailPage, page: ThreadDetailPage),
    RouteDef(Routes.answerFormPage, page: AnswerFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    ThreadsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ThreadsOverviewPage().wrappedRoute(context),
        settings: data,
      );
    },
    ThreadFormPage: (data) {
      final args = data.getArgs<ThreadFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ThreadFormPage(
          key: args.key,
          editedThread: args.editedThread,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    ThreadDetailPage: (data) {
      final args = data.getArgs<ThreadDetailPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ThreadDetailPage(
          key: args.key,
          thread: args.thread,
        ).wrappedRoute(context),
        settings: data,
        transitionsBuilder: slideRight,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
    AnswerFormPage: (data) {
      final args = data.getArgs<AnswerFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AnswerFormPage(
          key: args.key,
          editedAnswer: args.editedAnswer,
          editedThread: args.editedThread,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ThreadFormPage arguments holder class
class ThreadFormPageArguments {
  final Key key;
  final Thread editedThread;
  ThreadFormPageArguments({this.key, @required this.editedThread});
}

/// ThreadDetailPage arguments holder class
class ThreadDetailPageArguments {
  final Key key;
  final Thread thread;
  ThreadDetailPageArguments({this.key, @required this.thread});
}

/// AnswerFormPage arguments holder class
class AnswerFormPageArguments {
  final Key key;
  final Answer editedAnswer;
  final Thread editedThread;
  AnswerFormPageArguments(
      {this.key, @required this.editedAnswer, @required this.editedThread});
}
