// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:contributed_machinery/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:contributed_machinery/infrastructure/auth/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contributed_machinery/infrastructure/threads/answers/answer_repository.dart';
import 'package:contributed_machinery/domain/threads/answers/i_answer_repository.dart';
import 'package:contributed_machinery/infrastructure/auth/firebase_auth_facade.dart';
import 'package:contributed_machinery/domain/auth/i_auth_facade.dart';
import 'package:contributed_machinery/infrastructure/threads/thread_repository.dart';
import 'package:contributed_machinery/domain/threads/i_thread_repository.dart';
import 'package:contributed_machinery/application/sign_in_form/sign_in_form_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_actor/thread_actor_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_watcher/thread_watcher_bloc.dart';
import 'package:contributed_machinery/application/threads/answers/answer_watcher/answer_watcher_bloc.dart';
import 'package:contributed_machinery/application/threads/answers/answer_actor/answer_actor_bloc.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/application/threads/thread_form/thread_form_bloc.dart';
import 'package:contributed_machinery/application/threads/answers/answer_form/answer_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<ThreadActorBloc>(
      () => ThreadActorBloc(g<IThreadRepository>()));
  g.registerFactory<ThreadWatcherBloc>(
      () => ThreadWatcherBloc(g<IThreadRepository>()));
  g.registerFactory<ThreadWatcherBloc>(
      () => ThreadWatcherBloc(g<IThreadRepository>()));
  g.registerFactory<AnswerActorBloc>(
      () => AnswerActorBloc(g<IAnswerRepository>()));
  g.registerLazySingleton<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<ThreadFormBloc>(
      () => ThreadFormBloc(g<IThreadRepository>(), g<AuthBloc>()));
  g.registerFactory<AnswerFormBloc>(
      () => AnswerFormBloc(g<IAnswerRepository>(), g<AuthBloc>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAnswerRepository>(
        () => AnswerRepository(g<Firestore>()));
    g.registerLazySingleton<IAuthFacade>(
        () => FirebaseAuthFacade(g<FirebaseAuth>(), g<FirebaseUserMapper>()));
    g.registerLazySingleton<IThreadRepository>(
        () => ThreadRepository(g<Firestore>()));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
