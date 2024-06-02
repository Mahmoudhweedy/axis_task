import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'actor_list_view.dart';

class ActorsListScreen extends StatelessWidget {
  const ActorsListScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: const ActorsListView(),
        ),
      );
}
