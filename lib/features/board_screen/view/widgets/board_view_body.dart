import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/display_players_names.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/display_the_board.dart';
import 'package:tic_tac_toe_app/features/board_screen/view_model/board_view_model.dart';

class BoardViewBody extends StatefulWidget {
   const BoardViewBody({super.key, required this.numberOfBoardButtons});
  final int numberOfBoardButtons;
  @override
  State<BoardViewBody> createState() => _BoardViewBodyState();
}

class _BoardViewBodyState extends State<BoardViewBody> {
  @override
  void initState() {
    super.initState();
    BoardViewModel boardViewModel = Provider.of<BoardViewModel>(context,listen: false);
    boardViewModel.numberOfBoardButtons = widget.numberOfBoardButtons;
    boardViewModel.initializeBoardState();
  }
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 1,child: DisplayPlayersNames()),
        Expanded(flex: 3,child: DisplayTheBoard()),
      ],
    );
  }
}


