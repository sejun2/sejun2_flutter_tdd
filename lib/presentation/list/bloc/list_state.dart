import 'package:equatable/equatable.dart';

import '../../../domain/models/user.dart';

enum ListStatus { loading, loaded, error, initial}

class ListState extends Equatable{
  ListState({this.status = ListStatus.initial, this.users = const []});

  final ListStatus status;
  final List<User> users;

  @override
  List<Object?> get props => [status, users];

  ListState copyWith({ListStatus? status, List<User>? users}){
    return ListState(
      status: status ?? this.status,
      users: users ?? this.users,
    );
  }
}