// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return _ActorModel.fromJson(json);
}

/// @nodoc
mixin _$ActorModel {
  bool? get adult => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get knownForDepartment => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorModelCopyWith<ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorModelCopyWith<$Res> {
  factory $ActorModelCopyWith(
          ActorModel value, $Res Function(ActorModel) then) =
      _$ActorModelCopyWithImpl<$Res, ActorModel>;
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      String? knownForDepartment,
      String? name,
      double? popularity,
      String? profilePath});
}

/// @nodoc
class _$ActorModelCopyWithImpl<$Res, $Val extends ActorModel>
    implements $ActorModelCopyWith<$Res> {
  _$ActorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorModelImplCopyWith<$Res>
    implements $ActorModelCopyWith<$Res> {
  factory _$$ActorModelImplCopyWith(
          _$ActorModelImpl value, $Res Function(_$ActorModelImpl) then) =
      __$$ActorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      String? knownForDepartment,
      String? name,
      double? popularity,
      String? profilePath});
}

/// @nodoc
class __$$ActorModelImplCopyWithImpl<$Res>
    extends _$ActorModelCopyWithImpl<$Res, _$ActorModelImpl>
    implements _$$ActorModelImplCopyWith<$Res> {
  __$$ActorModelImplCopyWithImpl(
      _$ActorModelImpl _value, $Res Function(_$ActorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$ActorModelImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActorModelImpl implements _ActorModel {
  const _$ActorModelImpl(
      {this.adult,
      this.gender,
      this.id,
      this.knownForDepartment,
      this.name,
      this.popularity,
      this.profilePath});

  factory _$ActorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorModelImplFromJson(json);

  @override
  final bool? adult;
  @override
  final int? gender;
  @override
  final int? id;
  @override
  final String? knownForDepartment;
  @override
  final String? name;
  @override
  final double? popularity;
  @override
  final String? profilePath;

  @override
  String toString() {
    return 'ActorModel(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, popularity: $popularity, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, gender, id,
      knownForDepartment, name, popularity, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorModelImplCopyWith<_$ActorModelImpl> get copyWith =>
      __$$ActorModelImplCopyWithImpl<_$ActorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorModelImplToJson(
      this,
    );
  }
}

abstract class _ActorModel implements ActorModel {
  const factory _ActorModel(
      {final bool? adult,
      final int? gender,
      final int? id,
      final String? knownForDepartment,
      final String? name,
      final double? popularity,
      final String? profilePath}) = _$ActorModelImpl;

  factory _ActorModel.fromJson(Map<String, dynamic> json) =
      _$ActorModelImpl.fromJson;

  @override
  bool? get adult;
  @override
  int? get gender;
  @override
  int? get id;
  @override
  String? get knownForDepartment;
  @override
  String? get name;
  @override
  double? get popularity;
  @override
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$ActorModelImplCopyWith<_$ActorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
