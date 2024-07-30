import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/board_header.dart';
import 'package:tic_tac_toe_app/features/board_screen/view_model/board_view_model.dart';

class DisplayPlayersNames extends StatelessWidget {
  const DisplayPlayersNames({super.key});

  @override
  Widget build(BuildContext context) {
    var boardViewModel = Provider.of<BoardViewModel>(context);
    return BoardHeader(
        scorePlayer_1: boardViewModel.scorePlayer_1, scorePlayer_2: boardViewModel.scorePlayer_2
    );
  }
}