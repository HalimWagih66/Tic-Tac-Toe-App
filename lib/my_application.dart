import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/core/utils/app_router.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(333.07, 675.35),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Provider(
        create: (BuildContext context) => PlayersNamesProvider(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
