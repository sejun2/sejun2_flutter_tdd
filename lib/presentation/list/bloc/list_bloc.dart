import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sejun2_flutter_tdd/domain/repositories/list_repository.dart';

import 'list_state.dart';

class ListBloc extends Cubit<ListState>{
  ListBloc({required this.listRepository}) : super(ListState());

  final ListRepository listRepository;

  fetchUsers({required int page}) async{
    emit(state.copyWith(status: ListStatus.loading));

    final result = await listRepository.fetchUsers(page: page);

    result.when(success: (value) {
      emit(state.copyWith(
        status: ListStatus.loaded,
        users: value,
      ));
    }, failure: (error) {
      emit(state.copyWith(
        status: ListStatus.error,
      ));
    });
  }
}