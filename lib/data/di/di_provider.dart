import 'package:sejun2_flutter_tdd/data/di/repository_module.dart';
import 'package:sejun2_flutter_tdd/data/di/service_module.dart';

class DiProvider{
  static provide(){
    RepositoryModule.provide();
    ServiceModule.provide();
  }
}