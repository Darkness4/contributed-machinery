import 'package:auto_route/auto_route_annotations.dart';
import 'package:contributed_machinery/presentation/pages/sign_in/sign_in_page.dart';
import 'package:contributed_machinery/presentation/pages/splash/splash_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/thread_form_page.dart';
import 'package:contributed_machinery/presentation/pages/threads/threads_overview/threads_overview_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  ThreadsOverviewPage threadsOverviewPage;
  @MaterialRoute(fullscreenDialog: true)
  ThreadFormPage threadFormPage;
}
