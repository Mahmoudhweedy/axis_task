import 'package:axis_task/features/actors/data/models/actor_images_model.dart';

class ActorImagesResponse {
  final List<ActorImagesModel> images;

  ActorImagesResponse({
    required this.images,
  });
  factory ActorImagesResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> list = json['profiles'];
    final List<ActorImagesModel> actors =
        list.map((e) => ActorImagesModel.fromJson(e)).toList();

    return ActorImagesResponse(images: actors);
  }
}
