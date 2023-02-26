import 'package:sejun2_flutter_tdd/domain/entities/login_response.dart';

import '../entities/result.dart';

abstract class AuthenticateRepository {
  Future<Result<LoginResponse, String>> login(String email, String password);
}