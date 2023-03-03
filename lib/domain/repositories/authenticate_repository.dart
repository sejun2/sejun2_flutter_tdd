import 'package:sejun2_flutter_tdd/domain/models/token.dart';

import '../../data/entities/entity.dart';

abstract class AuthenticateRepository {
  Future<Result<Token, String>> login(String email, String password);
}