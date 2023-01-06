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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoResponse _$TodoResponseFromJson(Map<String, dynamic> json) {
  return _TodoResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoResponse {
  String? get uuid => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

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
  $Res call({String? uuid, String? description, bool? isCompleted});
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
    Object? uuid = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoResponseCopyWith<$Res>
    implements $TodoResponseCopyWith<$Res> {
  factory _$$_TodoResponseCopyWith(
          _$_TodoResponse value, $Res Function(_$_TodoResponse) then) =
      __$$_TodoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uuid, String? description, bool? isCompleted});
}

/// @nodoc
class __$$_TodoResponseCopyWithImpl<$Res>
    extends _$TodoResponseCopyWithImpl<$Res, _$_TodoResponse>
    implements _$$_TodoResponseCopyWith<$Res> {
  __$$_TodoResponseCopyWithImpl(
      _$_TodoResponse _value, $Res Function(_$_TodoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$_TodoResponse(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TodoResponse implements _TodoResponse {
  const _$_TodoResponse({this.uuid, this.description, this.isCompleted});

  factory _$_TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TodoResponseFromJson(json);

  @override
  final String? uuid;
  @override
  final String? description;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'TodoResponse(uuid: $uuid, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoResponse &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, description, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoResponseCopyWith<_$_TodoResponse> get copyWith =>
      __$$_TodoResponseCopyWithImpl<_$_TodoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoResponseToJson(
      this,
    );
  }
}

abstract class _TodoResponse implements TodoResponse {
  const factory _TodoResponse(
      {final String? uuid,
      final String? description,
      final bool? isCompleted}) = _$_TodoResponse;

  factory _TodoResponse.fromJson(Map<String, dynamic> json) =
      _$_TodoResponse.fromJson;

  @override
  String? get uuid;
  @override
  String? get description;
  @override
  bool? get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_TodoResponseCopyWith<_$_TodoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
