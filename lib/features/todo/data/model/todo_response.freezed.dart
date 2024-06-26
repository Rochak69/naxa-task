// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoResponse _$TodoResponseFromJson(Map<String, dynamic> json) {
  return _TodoResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get todo => throw _privateConstructorUsedError;
  int? get completed => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoResponseCopyWith<TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponseCopyWith<$Res> {
  factory $TodoResponseCopyWith(
          TodoResponse value, $Res Function(TodoResponse) then) =
      _$TodoResponseCopyWithImpl<$Res, TodoResponse>;
  @useResult
  $Res call({int? id, String? todo, int? completed, int? userId});
}

/// @nodoc
class _$TodoResponseCopyWithImpl<$Res, $Val extends TodoResponse>
    implements $TodoResponseCopyWith<$Res> {
  _$TodoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? todo = freezed,
    Object? completed = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoResponseImplCopyWith<$Res>
    implements $TodoResponseCopyWith<$Res> {
  factory _$$TodoResponseImplCopyWith(
          _$TodoResponseImpl value, $Res Function(_$TodoResponseImpl) then) =
      __$$TodoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? todo, int? completed, int? userId});
}

/// @nodoc
class __$$TodoResponseImplCopyWithImpl<$Res>
    extends _$TodoResponseCopyWithImpl<$Res, _$TodoResponseImpl>
    implements _$$TodoResponseImplCopyWith<$Res> {
  __$$TodoResponseImplCopyWithImpl(
      _$TodoResponseImpl _value, $Res Function(_$TodoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? todo = freezed,
    Object? completed = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$TodoResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoResponseImpl implements _TodoResponse {
  const _$TodoResponseImpl({this.id, this.todo, this.completed, this.userId});

  factory _$TodoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? todo;
  @override
  final int? completed;
  @override
  final int? userId;

  @override
  String toString() {
    return 'TodoResponse(id: $id, todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, todo, completed, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoResponseImplCopyWith<_$TodoResponseImpl> get copyWith =>
      __$$TodoResponseImplCopyWithImpl<_$TodoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoResponse implements TodoResponse {
  const factory _TodoResponse(
      {final int? id,
      final String? todo,
      final int? completed,
      final int? userId}) = _$TodoResponseImpl;

  factory _TodoResponse.fromJson(Map<String, dynamic> json) =
      _$TodoResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get todo;
  @override
  int? get completed;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$TodoResponseImplCopyWith<_$TodoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
