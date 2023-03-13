import '../../data/entities/entity.dart';
import '../models/model.dart';

abstract class ListRepository{
  Future<Result<List<User>, String>> fetchUsers({required int page});
}