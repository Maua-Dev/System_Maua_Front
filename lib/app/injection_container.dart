import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/services/firebase/firebase_analytics_service.dart';

import 'modules/auth/auth_controller.dart';
import 'modules/auth/repositories/auth_repository_interface.dart';
import 'modules/auth/repositories/auth_repository_mock.dart';
import 'modules/auth/repositories/secure_storage.dart';
import 'modules/auth/repositories/secure_storage_interface.dart';
import 'modules/calendario/calendario_controller.dart';
import 'modules/calendario/repositories/calendario_repository.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/repositories/home_repository.dart';
import 'modules/home/repositories/home_repository_interface.dart';
import 'modules/login/login_controller.dart';
import 'modules/subjects/repositories/subject_repository.dart';
import 'modules/subjects/repositories/subject_repository_interface.dart';
import 'modules/subjects/subject_controller.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  //auth
  serviceLocator.registerSingletonAsync<ISecureStorage>(
      () async => await SecureStorage.instance());
  serviceLocator.registerLazySingleton<AuthController>(() => AuthController(
        repository: serviceLocator(),
        analytics: serviceLocator(),
      ));
  serviceLocator.registerLazySingleton<FirebaseAnalyticsService>(
      () => FirebaseAnalyticsService());
  serviceLocator
      .registerLazySingleton<IAuthRepository>(() => AuthRepositoryMock());

  //login
  serviceLocator.registerLazySingleton<LoginController>(
      () => LoginController(serviceLocator()));

  //landing
  serviceLocator.registerLazySingleton<BottomNavigationBarController>(
      () => BottomNavigationBarController());

  //home
  serviceLocator.registerLazySingleton<HomeController>(
      () => HomeController(serviceLocator()));
  serviceLocator.registerLazySingleton<IHomeRepository>(() => HomeRepository());

  //subject
  serviceLocator.registerLazySingleton<SubjectController>(
      () => SubjectController(serviceLocator()));
  serviceLocator
      .registerLazySingleton<ISubjectRepository>(() => SubjectRepository());

  //calendar
  serviceLocator.registerLazySingleton<CalendarioController>(
      () => CalendarioController(serviceLocator()));
  serviceLocator
      .registerLazySingleton<CalendarRepository>(() => CalendarRepository());
}
