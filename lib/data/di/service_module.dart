import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/di/service_module.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ReqresApiService>(),
])
abstract class ServiceModule{
  /// Whether the app is running in test mode.
  static final isTest = Platform.environment.containsKey('FLUTTER_TEST');

  static provide() {
    if (isTest == true) {
      GetIt.I.registerSingleton<ReqresApiService>(
          MockReqresApiService());
    } else {
      GetIt.I.registerSingleton<ReqresApiService>(
          ReqresApiService());
    }
  }
}