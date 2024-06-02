import 'package:axis_task/features/actors/presentation/screens/actor_screen.dart';
import 'package:flutter/material.dart';

import '../../features/actors/data/models/actor_model.dart';
import '../../features/actors/presentation/screens/actors_list_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.actorsScreen:
        return MaterialPageRoute(builder: (_) => const ActorsListScreen());
      case Routes.actorScreen:
        return MaterialPageRoute(
            builder: (_) => ActorScreen(actor: arguments as ActorModel));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
