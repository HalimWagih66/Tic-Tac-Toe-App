import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/features/Players_names_entry_view/view/players_names_entry_view.dart';
import 'package:tic_tac_toe_app/features/splash%20screen/view/widgets/splash_screen_view_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    switchToScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SplashScreenViewBody(),
    );
  }

  void switchToScreen() {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacementNamed(PlayersNamesEntryView.routeName);
      },
    );
  }
}
