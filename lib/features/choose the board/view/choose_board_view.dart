import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/features/choose%20the%20board/view/widgets/choose_board_view_body.dart';

class ChooseBoardView extends StatelessWidget {
    const ChooseBoardView({super.key});
  static const routeName = "Choose_board";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseBoardViewBody(),
    );
  }
}
