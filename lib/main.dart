import 'package:axis_task/core/cache_helper/hive_helper.dart';
import 'package:axis_task/core/di/dependency_injection.dart';
import 'package:axis_task/core/extentions/number_extentions.dart';
import 'package:axis_task/core/router/route_helper.dart';
import 'package:axis_task/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'features/actors/domain/logic_holder/actors_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  HiveHelper.initHive();
  runApp(AxisApp(appRouter: AppRouter()));
}

class AxisApp extends StatelessWidget {
  final AppRouter appRouter;
  const AxisApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: ChangeNotifierProvider(
        create: (context) => di<ActorsProvider>(),
        child: MaterialApp(
          title: 'Axis Pay',
          builder: (context, child) {
            return MediaQuery(
              data: MediaQueryData(
                textScaler: MediaQuery.textScalerOf(context)
                    .clamp(maxScaleFactor: 1.3, minScaleFactor: 1),
                size: Size(context.width, context.height),
                viewInsets: MediaQuery.viewInsetsOf(context),
              ),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.actorsScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
