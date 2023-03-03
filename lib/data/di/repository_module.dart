import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/di/repository_module.mocks.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';

import '../repositories/authenticate_repository_impl.dart';

@GenerateNiceMocks([
  MockSpec<AuthenticateRepository>(),
])
abstract class RepositoryModule {
  /// Whether the app is running in test mode.
  static final isTest = Platform.environment.containsKey('FLUTTER_TEST');

  static provide() {
    if (isTest == true) {
      GetIt.I.registerSingleton<AuthenticateRepository>(
          MockAuthenticateRepository());
    } else {
      GetIt.I.registerSingleton<AuthenticateRepository>(
          AuthenticateRepositoryImpl(reqresApiService: ReqresApiService()));
    }
  }
}
