// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) => ActorModel(
      adult: json['adult'] as bool?,
      gender: (json['gender'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      knownForDepartment: json['known_for_department'] as String?,
      name: json['name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$ActorModelToJson(ActorModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
    };
