import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/Players_names_entry_view/view/Players_names_entry_view.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/board_view.dart';
import 'package:tic_tac_toe_app/features/board_screen/view_model/board_view_model.dart';
import 'package:tic_tac_toe_app/features/choose%20the%20board/view/choose_board_view.dart';
import 'package:tic_tac_toe_app/features/splash%20screen/view/splash_screen_view.dart';

abstract class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: PlayersNamesEntryView.routeName,
        builder: (context, state) => Provider(create: (BuildContext context) => BoardViewModel(),
        child: const PlayersNamesEntryView()),
      ),
      GoRoute(
        path: ChooseBoardView.routeName,
        builder: (context, state) => const ChooseBoardView(),
      ),
      GoRoute(
        path: BoardView.routeName,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => BoardViewModel(),
          child: BoardView(counterButton: state.extra as int,),
        ),
      ),
    ],
  );
}