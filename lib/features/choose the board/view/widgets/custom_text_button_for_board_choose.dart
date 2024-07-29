import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/utils/text_theme_app/text_theme_app.dart';


class CustomTextButtonForBoardChoose extends StatelessWidget {
  const CustomTextButtonForBoardChoose({
    super.key, required this.itemCount, required this.color,
  });
  final int itemCount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: color, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(25),
        color: Colors.black54,
      ),
      child: TextButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => const BoardView(counterButton: 3),
          //   ),
          // );
        },
        child:  Text(
          "$itemCount      X      $itemCount",
          style: TextThemeApp.font45Regular(color),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}