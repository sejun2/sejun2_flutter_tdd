import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/data/entities/user_list_entity.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/list_repository.dart';

import '../../domain/models/model.dart';
import '../entities/result.dart';
import '../mapper/user_mapper.dart';

class ListRepositoryImpl implements ListRepository {
  final ReqresApiService _reqresApiService;

  ListRepositoryImpl({required ReqresApiService reqresApiService}): _reqresApiService = reqresApiService;

  @override
  Future<Result<List<User>, String>> fetchUsers({required int page}) async {
      try {
        final res = await _reqresApiService.fetchUsers(page: page);

        final entity = UserListEntity.fromJson(res.data);
        final model = UserMapper().asModel(entity);

        return Result.success(model);
      } catch (e) {
        return Result.failure(e.toString());
      }
  }
}