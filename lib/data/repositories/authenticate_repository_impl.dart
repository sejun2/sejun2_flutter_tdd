import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/domain/entities/result.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';

import '../../domain/entities/login_response.dart';

class AuthenticateRepositoryImpl implements AuthenticateRepository{
  AuthenticateRepositoryImpl({required this.reqresApiService});

  final ReqresApiService reqresApiService;

  @override
  Future<Result<LoginResponse, String>> login(String email, String password) async {
    try{
      final res = await reqresApiService.login(email, password);

      return Result.success(LoginResponse.fromJson(res.data));
    }catch(e){
      return Result.failure(e.toString());
    }
  }
}