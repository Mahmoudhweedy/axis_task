import 'package:axis_task/features/actors/data/models/actor_model.dart';
import 'package:flutter/material.dart';

import '../widgets/app_fade_image.dart';

/// List item representing a single Character with its photo and name.
class CharacterListItem extends StatelessWidget {
  const CharacterListItem({
    required this.actor,
    super.key,
  });

  final ActorModel actor;

  @override
  Widget build(BuildContext context) => ListTile(
        leading: Hero(
          tag: actor.id!,
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: AppFadeImage(actorPhoto: actor.profilePath ?? ""),
          ),
        ),
        title: Text(actor.name!),
      );
}
