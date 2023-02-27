import 'package:sejun2_flutter_tdd/data/models/token.dart';

import '../entities/result.dart';

abstract class AuthenticateRepository {
  Future<Result<Token, String>> login(String email, String password);
}