import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/Players_names_entry_view/view/players_names_entry_view.dart';
import 'package:tic_tac_toe_app/features/choose%20the%20board/view/choose_board_view.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';
import 'features/splash screen/view/splash_screen_view.dart';

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
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            SplashScreen.routeName:(context) => const SplashScreen(),
            PlayersNamesEntryView.routeName:(context) => const PlayersNamesEntryView(),
            ChooseBoardView.routeName:(context) => const ChooseBoardView()
          },
          initialRoute: SplashScreen.routeName,
        ),
      ),
    );
  }
}
