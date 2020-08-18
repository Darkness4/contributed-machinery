import 'package:auto_route/auto_route_annotations.dart';
import 'package:contributed_machinery/presentation/pages/sign_in/sign_in_page.dart';
import 'package:contributed_machinery/presentation/pages/splash/splash_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/answer_form/answer_form_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_detail/thread_detail_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/thread_form_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/threads_overview/threads_overview_page.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: ThreadsOverviewPage),
  MaterialRoute(page: ThreadFormPage, fullscreenDialog: true),
  CustomRoute(
    transitionsBuilder: slideRight,
    durationInMilliseconds: 300,
    page: ThreadDetailPage,
  ),
  MaterialRoute(page: AnswerFormPage, fullscreenDialog: true),
])
class $Router {}

Widget slideRight(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      ),
    ),
    child: child,
  );
}
