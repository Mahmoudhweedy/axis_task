import 'actor_model.dart';

class ActorResponse {
  final int? page, totalPages, totalResult;
  final List<ActorModel> actors;

  ActorResponse({
    this.page,
    required this.actors,
    this.totalPages,
    this.totalResult,
  });
  factory ActorResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> list = json['results'];
    final List<ActorModel> actors =
        list.map((e) => ActorModel.fromJson(e)).toList();

    return ActorResponse(
      actors: actors,
      page: json['page'],
      totalPages: json['total_pages'],
      totalResult: json['total_results'],
    );
  }
}
