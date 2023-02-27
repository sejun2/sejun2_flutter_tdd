import 'package:sejun2_flutter_tdd/data/models/token.dart';
import 'package:sejun2_flutter_tdd/domain/entities/login_response.dart';
import 'package:sejun2_flutter_tdd/domain/mapper/mapper.dart';

class TokenMapper implements Mapper<Token, LoginResponse>{
  @override
  LoginResponse asEntity(Token model) {
    return LoginResponse(
      token: model.token,
    );
  }

  @override
  Token asModel(LoginResponse entity) {
    return Token(
      token: entity.token,
    );
  }
}