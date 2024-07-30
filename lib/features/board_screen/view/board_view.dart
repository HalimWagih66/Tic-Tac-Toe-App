import 'dart:core';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/board_view_body.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/custom_app_bar.dart';

class BoardView extends StatelessWidget {
  static const routeName = "/BoardView";
  final int counterButton;

  const BoardView({super.key, required this.counterButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff011A2A),
      appBar:  const CustomAppBar(),
      body: BoardViewBody(numberOfBoardButtons: counterButton)
    );
  }
}