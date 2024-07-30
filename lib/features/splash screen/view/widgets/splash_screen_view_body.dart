import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/utils/text_theme_app/text_theme_app.dart';

class SplashScreenViewBody extends StatelessWidget {
  const SplashScreenViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome", style: TextThemeApp.font68Bold(const Color(0xfff7017f)),),
          Text("to", style: TextThemeApp.font68Bold(const Color(0xfff7017f))),
          Text("the game", style: TextThemeApp.font68Bold(const Color(0xff7b56c7)),),
          Text("Tic Tak Toe", style: TextThemeApp.font68Bold(const Color(0xff0371fc)),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
