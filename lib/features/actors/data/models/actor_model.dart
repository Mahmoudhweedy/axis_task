import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_model.freezed.dart';
part 'actor_model.g.dart';

@Freezed()
class ActorModel with _$ActorModel {
  const factory ActorModel({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    String? name,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _ActorModel;

  factory ActorModel.fromJson(Map<String, Object?> json) =>
      _$ActorModelFromJson(json);
}
