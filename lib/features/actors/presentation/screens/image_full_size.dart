import 'package:axis_task/core/network/api_constants.dart';
import 'package:axis_task/features/actors/data/models/actor_images_model.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

import '../Widgets/app_fade_image.dart';

class FullSizeImage extends StatelessWidget {
  const FullSizeImage({super.key, required this.image});
  final ActorImagesModel image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await GallerySaver.saveImage(
          "${ApiConstants.remoteImagePath}${image.filePath}",
          albumName: "Actors",
        ),
        child: const Icon(Icons.download),
      ),
      body: AppFadeImage(
        actorPhoto: image.filePath,
        height: image.height.toDouble(),
        width: image.width.toDouble(),
        fit: BoxFit.cover,
      ),
    );
  }
}
