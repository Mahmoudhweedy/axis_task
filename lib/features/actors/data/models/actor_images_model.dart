class ActorImagesModel {
  final double aspectRatio;
  final int height;
  final String filePath;
  final double voteAverage;
  final int voteCount;
  final int width;
  const ActorImagesModel({
    required this.aspectRatio,
    required this.height,
    required this.filePath,
    required this.voteAverage,
    required this.voteCount,
    required this.width,
  });
  factory ActorImagesModel.fromJson(Map<String, dynamic> json) {
    return ActorImagesModel(
      aspectRatio: json['aspect_ratio'],
      height: json['height'],
      filePath: json['file_path'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
      width: json['width'],
    );
  }
}
