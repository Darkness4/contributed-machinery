// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/threads/answers/answer_form/answer_form_bloc.dart';
import 'infrastructure/threads/answers/answer_repository.dart';
import 'application/threads/answers/answer_watcher/answer_watcher_bloc.dart';
import 'application/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/threads/answers/i_answer_repository.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/threads/i_thread_repository.dart';
import 'application/search/search_bloc.dart';
import 'application/sign_in_form/sign_in_form_bloc.dart';
import 'application/threads/thread_actor/thread_actor_bloc.dart';
import 'application/threads/thread_form/thread_form_bloc.dart';
import 'infrastructure/threads/thread_repository.dart';
import 'application/threads/thread_watcher/thread_watcher_bloc.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAnalytics>(() => firebaseInjectableModule.analytics);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<IAnswerRepository>(
      () => AnswerRepository(get<FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(get<FirebaseAuth>()),
      registerFor: {_prod});
  gh.lazySingleton<IThreadRepository>(
      () => ThreadRepository(get<FirebaseFirestore>()),
      registerFor: {_prod});
  gh.factory<SearchBloc>(() => SearchBloc());
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<ThreadActorBloc>(() => ThreadActorBloc(get<IThreadRepository>()));
  gh.factory<ThreadWatcherBloc>(
      () => ThreadWatcherBloc(get<IThreadRepository>()));
  gh.factory<AnswerWatcherBloc>(
      () => AnswerWatcherBloc(get<IAnswerRepository>()));
  gh.lazySingleton<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<ThreadFormBloc>(
      () => ThreadFormBloc(get<IThreadRepository>(), get<AuthBloc>()));
  gh.factory<AnswerFormBloc>(() => AnswerFormBloc(
        get<IAnswerRepository>(),
        get<AuthBloc>(),
        get<IThreadRepository>(),
      ));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
