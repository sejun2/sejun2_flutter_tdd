import 'package:get_it/get_it.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';

import '../repositories/authenticate_repository_impl.dart';

abstract class RepositoryModule{
  static provide(){
    GetIt.I.registerSingleton<AuthenticateRepository>(
        AuthenticateRepositoryImpl(reqresApiService: ReqresApiService()));
  }
}