import 'package:axis_task/core/network/api_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppFadeImage extends StatelessWidget {
  const AppFadeImage({
    super.key,
    required this.actorPhoto,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
    this.gender = 2,
  });

  final String actorPhoto;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final int gender;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "${ApiConstants.remoteImagePath}$actorPhoto",
      errorWidget: (context, url, error) => ImagePlaceHolder(gender: gender),
      placeholder: (context, url) => ImagePlaceHolder(gender: gender),
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({
    super.key,
    required this.gender,
  });

  final int gender;

  @override
  Widget build(BuildContext context) {
    return Image.asset(gender == 1 ? "assets/woman.jpg" : "assets/man.jpg");
  }
}
