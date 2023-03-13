import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_list_entity.freezed.dart';
part 'user_list_entity.g.dart';

@freezed
class UserListEntity with _$UserListEntity {
  const factory UserListEntity({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<DataItem>? data,
    Support? support,
  }) = _UserListEntity;

  factory UserListEntity.fromJson(Map<String, dynamic> json) => _$UserListEntityFromJson(json);
}

@freezed
class DataItem with _$DataItem {
  const factory DataItem({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) = _DataItem;

  factory DataItem.fromJson(Map<String, dynamic> json) => _$DataItemFromJson(json);
}

@freezed
class Support with _$Support {
  const factory Support({
    String? url,
    String? text,
  }) = _Support;

  factory Support.fromJson(Map<String, dynamic> json) => _$SupportFromJson(json);
}
