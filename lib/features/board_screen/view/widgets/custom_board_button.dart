import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/core/utils/text_theme_app/text_theme_app.dart';
import 'package:tic_tac_toe_app/features/board_screen/view_model/board_view_model.dart';

class CustomBoardButton extends StatelessWidget {
  const CustomBoardButton({super.key, required this.title, required this.position});
  final String title;
  final int position;
  @override
  Widget build(BuildContext context) {
    BoardViewModel boardViewModel = Provider.of<BoardViewModel>(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      onPressed: boardViewModel.enabledButtons?() {
        Provider.of<BoardViewModel>(context,listen: false).onUserClick(position, context);
      }:null,
      child: FittedBox(
        child: Stack(
          children: [
            Text(title, style: TextThemeApp.font30Regular( color: title == 'X' ? const Color(0xff0075fb) : const Color(0xfffc0e85), title: title)),
          ],
        ),
      ),
    );
  }
}