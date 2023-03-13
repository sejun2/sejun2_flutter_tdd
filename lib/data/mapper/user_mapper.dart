import 'package:sejun2_flutter_tdd/data/mapper/mapper.dart';

import '../../domain/models/user.dart';
import '../entities/entity.dart';

class UserMapper implements Mapper<List<User>, UserListEntity> {
  @override
  UserListEntity asEntity(List<User> model) {
    final data = <DataItem>[];

    for(var i = 0; i < (model.length ?? 0); i++){
      data.add(DataItem(
        id: model[i].id,
        email: model[i].email,
        firstName: model[i].firstName,
        lastName: model[i].lastName,
        avatar: model[i].avatar,
      ));
    }

    return UserListEntity(
      data: data,
    );
  }

  @override
  List<User> asModel(UserListEntity entity) {
    final List<User> users = [];

    if(entity.data?.isEmpty ?? false){
      return users;
    }

    for(var i = 0; i < entity.data!.length; i++){
      final result = User(
        id: entity.data![i].id,
        email: entity.data![i].email,
        firstName: entity.data![i].firstName,
        lastName: entity.data![i].lastName,
        avatar: entity.data![i].avatar,
      );

      users.add(result);
    }

    return users;
  }
}