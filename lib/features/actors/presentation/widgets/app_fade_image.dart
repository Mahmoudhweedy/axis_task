import 'package:axis_task/core/network/api_constants.dart';
import 'package:flutter/material.dart';

class AppFadeImage extends StatelessWidget {
  const AppFadeImage({
    super.key,
    required this.actorPhoto,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  });

  final String actorPhoto;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      image: NetworkImage("${ApiConstants.remoteImagePath}$actorPhoto"),
      placeholder: const AssetImage("assets/man.jpg"),
      imageErrorBuilder: (context, error, stackTrace) {
        return Image.asset("assets/man.jpg");
      },
      fit: fit,
      height: height,
      width: width,
    );
  }
}
