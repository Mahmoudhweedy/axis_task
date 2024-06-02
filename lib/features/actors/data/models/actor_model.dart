import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'actor_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class ActorModel {
  @HiveField(0)
  bool? adult;
  @HiveField(1)
  int? gender;
  @HiveField(2)
  int? id;
  @HiveField(3)
  @JsonKey(name: 'known_for_department')
  @HiveField(4)
  String? knownForDepartment;
  @HiveField(5)
  String? name;
  @HiveField(6)
  double? popularity;
  @HiveField(7)
  @JsonKey(name: 'profile_path')
  @HiveField(8)
  String? profilePath;

  ActorModel({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.popularity,
    required this.profilePath,
  });

  factory ActorModel.fromJson(Map<String, Object?> json) =>
      _$ActorModelFromJson(json);
}
