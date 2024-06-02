import 'package:axis_task/core/extentions/number_extentions.dart';
import 'package:axis_task/features/actors/data/models/actor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../domain/logic_holder/actors_controller.dart';
import '../widgets/app_fade_image.dart';
import 'image_full_size.dart';

class ActorScreen extends StatefulWidget {
  const ActorScreen({super.key, required this.actor});
  final ActorModel actor;
  @override
  State<ActorScreen> createState() => _ActorScreenState();
}

class _ActorScreenState extends State<ActorScreen> {
  @override
  void initState() {
    context.read<ActorsProvider>().getActorsImages(widget.actor.id!, context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          40.ph,
          Row(
            children: [
              const BackButton(),
              Text(
                widget.actor.name!,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              Hero(
                tag: widget.actor.id!,
                child: Container(
                  height: 50.h,
                  width: 50.w,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: AppFadeImage(
                    actorPhoto: widget.actor.profilePath!,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ).horizontalPadding(16),
          10.ph,
          Expanded(
            child: Consumer<ActorsProvider>(
              builder: (context, provider, child) => GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: .9,
                ),
                itemCount: provider.images.length,
                itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                FullSizeImage(image: provider.images[index]),
                          ),
                        ),
                    child: Hero(
                      tag: provider.images[index].filePath,
                      child: AppFadeImage(
                        actorPhoto: provider.images[index].filePath,
                        gender: widget.actor.gender!,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
