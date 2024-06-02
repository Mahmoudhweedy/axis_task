import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_model.g.dart';

@JsonSerializable()
class ActorModel {
  bool? adult;
  int? gender;
  int? id;
  @JsonKey(name: 'known_for_department')
  String? knownForDepartment;
  String? name;
  double? popularity;
  @JsonKey(name: 'profile_path')
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
