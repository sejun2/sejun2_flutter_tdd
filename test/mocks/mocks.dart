import 'package:mockito/annotations.dart';
import 'package:sejun2_flutter_tdd/data/api_provider/reqres_api_service.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/authenticate_repository.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/list_repository.dart';


/// This file is for generating mocks
/// The output file is mocks.mocks.dart
@GenerateNiceMocks([
  MockSpec<ReqresApiService>(),
  MockSpec<AuthenticateRepository>(),
  MockSpec<ListRepository>(),
])
void main(){

}