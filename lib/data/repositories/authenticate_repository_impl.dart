import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/models/token.dart';
import 'package:sejun2_flutter_tdd/domain/entities/result.dart';
import 'package:sejun2_flutter_tdd/domain/mapper/token_mapper.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';

import '../../domain/entities/login_response.dart';

class AuthenticateRepositoryImpl implements AuthenticateRepository{
  AuthenticateRepositoryImpl({required this.reqresApiService});

  final ReqresApiService reqresApiService;

  @override
  Future<Result<Token, String>> login(String email, String password) async {
    try{
      final res = await reqresApiService.login(email, password);

      final entity = LoginResponse.fromJson(res.data);
      final model = TokenMapper().asModel(entity);

      return Result.success(model);
    }catch(e){
      return Result.failure(e.toString());
    }
  }
}