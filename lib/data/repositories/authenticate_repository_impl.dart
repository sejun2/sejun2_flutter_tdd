import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/entities/entity.dart';
import 'package:sejun2_flutter_tdd/data/mapper/token_mapper.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';

import '../../domain/models/model.dart';

class AuthenticateRepositoryImpl implements AuthenticateRepository{
  AuthenticateRepositoryImpl({required ReqresApiService reqresApiService}) : _reqresApiService = reqresApiService;

  final ReqresApiService _reqresApiService;

  @override
  Future<Result<Token, String>> login(String email, String password) async {
    try{
      final res = await _reqresApiService.login(email, password);

      final entity = LoginResponse.fromJson(res.data);
      final model = TokenMapper().asModel(entity);

      return Result.success(model);
    }catch(e){
      return Result.failure(e.toString());
    }
  }
}