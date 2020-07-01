import 'package:auto_route/auto_route.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:contributed_machinery/presentation/routes/router.gr.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Contributed Machinery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue,
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: Colors.blue[800],
                iconTheme: ThemeData.dark().iconTheme,
              ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
            foregroundColor: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        builder: ExtendedNavigator<Router>(
          router: Router(),
          observers: [
            FirebaseAnalyticsObserver(analytics: getIt<FirebaseAnalytics>()),
          ],
        ),
      ),
    );
  }
}
