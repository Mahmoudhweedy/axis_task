// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorModelImpl _$$ActorModelImplFromJson(Map<String, dynamic> json) =>
    _$ActorModelImpl(
      adult: json['adult'] as bool?,
      gender: (json['gender'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      knownForDepartment: json['knownForDepartment'] as String?,
      name: json['name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profilePath: json['profilePath'] as String?,
    );

Map<String, dynamic> _$$ActorModelImplToJson(_$ActorModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'knownForDepartment': instance.knownForDepartment,
      'name': instance.name,
      'popularity': instance.popularity,
      'profilePath': instance.profilePath,
    };