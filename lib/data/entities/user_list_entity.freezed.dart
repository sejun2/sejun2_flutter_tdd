// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListEntity _$UserListEntityFromJson(Map<String, dynamic> json) {
  return _UserListEntity.fromJson(json);
}

/// @nodoc
mixin _$UserListEntity {
  int? get page => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  List<DataItem>? get data => throw _privateConstructorUsedError;
  Support? get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListEntityCopyWith<UserListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEntityCopyWith<$Res> {
  factory $UserListEntityCopyWith(
          UserListEntity value, $Res Function(UserListEntity) then) =
      _$UserListEntityCopyWithImpl<$Res, UserListEntity>;
  @useResult
  $Res call(
      {int? page,
      int? perPage,
      int? total,
      int? totalPages,
      List<DataItem>? data,
      Support? support});

  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class _$UserListEntityCopyWithImpl<$Res, $Val extends UserListEntity>
    implements $UserListEntityCopyWith<$Res> {
  _$UserListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataItem>?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportCopyWith<$Res>? get support {
    if (_value.support == null) {
      return null;
    }

    return $SupportCopyWith<$Res>(_value.support!, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserListEntityCopyWith<$Res>
    implements $UserListEntityCopyWith<$Res> {
  factory _$$_UserListEntityCopyWith(
          _$_UserListEntity value, $Res Function(_$_UserListEntity) then) =
      __$$_UserListEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      int? perPage,
      int? total,
      int? totalPages,
      List<DataItem>? data,
      Support? support});

  @override
  $SupportCopyWith<$Res>? get support;
}

/// @nodoc
class __$$_UserListEntityCopyWithImpl<$Res>
    extends _$UserListEntityCopyWithImpl<$Res, _$_UserListEntity>
    implements _$$_UserListEntityCopyWith<$Res> {
  __$$_UserListEntityCopyWithImpl(
      _$_UserListEntity _value, $Res Function(_$_UserListEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
    Object? support = freezed,
  }) {
    return _then(_$_UserListEntity(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataItem>?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Support?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListEntity implements _UserListEntity {
  const _$_UserListEntity(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      final List<DataItem>? data,
      this.support})
      : _data = data;

  factory _$_UserListEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserListEntityFromJson(json);

  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final int? total;
  @override
  final int? totalPages;
  final List<DataItem>? _data;
  @override
  List<DataItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Support? support;

  @override
  String toString() {
    return 'UserListEntity(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, data: $data, support: $support)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListEntity &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.support, support) || other.support == support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_data), support);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListEntityCopyWith<_$_UserListEntity> get copyWith =>
      __$$_UserListEntityCopyWithImpl<_$_UserListEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListEntityToJson(
      this,
    );
  }
}

abstract class _UserListEntity implements UserListEntity {
  const factory _UserListEntity(
      {final int? page,
      final int? perPage,
      final int? total,
      final int? totalPages,
      final List<DataItem>? data,
      final Support? support}) = _$_UserListEntity;

  factory _UserListEntity.fromJson(Map<String, dynamic> json) =
      _$_UserListEntity.fromJson;

  @override
  int? get page;
  @override
  int? get perPage;
  @override
  int? get total;
  @override
  int? get totalPages;
  @override
  List<DataItem>? get data;
  @override
  Support? get support;
  @override
  @JsonKey(ignore: true)
  _$$_UserListEntityCopyWith<_$_UserListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

DataItem _$DataItemFromJson(Map<String, dynamic> json) {
  return _DataItem.fromJson(json);
}

/// @nodoc
mixin _$DataItem {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataItemCopyWith<DataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataItemCopyWith<$Res> {
  factory $DataItemCopyWith(DataItem value, $Res Function(DataItem) then) =
      _$DataItemCopyWithImpl<$Res, DataItem>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? firstName,
      String? lastName,
      String? avatar});
}

/// @nodoc
class _$DataItemCopyWithImpl<$Res, $Val extends DataItem>
    implements $DataItemCopyWith<$Res> {
  _$DataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataItemCopyWith<$Res> implements $DataItemCopyWith<$Res> {
  factory _$$_DataItemCopyWith(
          _$_DataItem value, $Res Function(_$_DataItem) then) =
      __$$_DataItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? firstName,
      String? lastName,
      String? avatar});
}

/// @nodoc
class __$$_DataItemCopyWithImpl<$Res>
    extends _$DataItemCopyWithImpl<$Res, _$_DataItem>
    implements _$$_DataItemCopyWith<$Res> {
  __$$_DataItemCopyWithImpl(
      _$_DataItem _value, $Res Function(_$_DataItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_DataItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataItem implements _DataItem {
  const _$_DataItem(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory _$_DataItem.fromJson(Map<String, dynamic> json) =>
      _$$_DataItemFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'DataItem(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, firstName, lastName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataItemCopyWith<_$_DataItem> get copyWith =>
      __$$_DataItemCopyWithImpl<_$_DataItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataItemToJson(
      this,
    );
  }
}

abstract class _DataItem implements DataItem {
  const factory _DataItem(
      {final int? id,
      final String? email,
      final String? firstName,
      final String? lastName,
      final String? avatar}) = _$_DataItem;

  factory _DataItem.fromJson(Map<String, dynamic> json) = _$_DataItem.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_DataItemCopyWith<_$_DataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Support _$SupportFromJson(Map<String, dynamic> json) {
  return _Support.fromJson(json);
}

/// @nodoc
mixin _$Support {
  String? get url => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportCopyWith<Support> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportCopyWith<$Res> {
  factory $SupportCopyWith(Support value, $Res Function(Support) then) =
      _$SupportCopyWithImpl<$Res, Support>;
  @useResult
  $Res call({String? url, String? text});
}

/// @nodoc
class _$SupportCopyWithImpl<$Res, $Val extends Support>
    implements $SupportCopyWith<$Res> {
  _$SupportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupportCopyWith<$Res> implements $SupportCopyWith<$Res> {
  factory _$$_SupportCopyWith(
          _$_Support value, $Res Function(_$_Support) then) =
      __$$_SupportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? text});
}

/// @nodoc
class __$$_SupportCopyWithImpl<$Res>
    extends _$SupportCopyWithImpl<$Res, _$_Support>
    implements _$$_SupportCopyWith<$Res> {
  __$$_SupportCopyWithImpl(_$_Support _value, $Res Function(_$_Support) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_Support(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Support implements _Support {
  const _$_Support({this.url, this.text});

  factory _$_Support.fromJson(Map<String, dynamic> json) =>
      _$$_SupportFromJson(json);

  @override
  final String? url;
  @override
  final String? text;

  @override
  String toString() {
    return 'Support(url: $url, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Support &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportCopyWith<_$_Support> get copyWith =>
      __$$_SupportCopyWithImpl<_$_Support>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportToJson(
      this,
    );
  }
}

abstract class _Support implements Support {
  const factory _Support({final String? url, final String? text}) = _$_Support;

  factory _Support.fromJson(Map<String, dynamic> json) = _$_Support.fromJson;

  @override
  String? get url;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_SupportCopyWith<_$_Support> get copyWith =>
      throw _privateConstructorUsedError;
}
