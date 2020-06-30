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

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const threadsOverviewPage = '/threads-overview-page';
  static const threadFormPage = '/thread-form-page';
  static const all = {
    splashPage,
    signInPage,
    threadsOverviewPage,
    threadFormPage,
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
