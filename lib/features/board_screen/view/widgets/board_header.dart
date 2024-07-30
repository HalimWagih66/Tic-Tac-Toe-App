import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/utils/text_theme_app/text_theme_app.dart';


class BoardHeader extends StatelessWidget {
  final int scorePlayer_1;
  final int scorePlayer_2;
  final String firstPlayerName;
  final String secondPlayerName;
  const BoardHeader({super.key, required this.scorePlayer_1,required this.scorePlayer_2, required this.firstPlayerName, required this.secondPlayerName,});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("$firstPlayerName (X)",
                style: TextThemeApp.font25Regular(const Color(0xff0075fb))
              ),
              Text("Score : $scorePlayer_1", style: TextThemeApp.font25Regular(const Color(0xff0075fb))
              )
            ],
          ),
          Column(
            children: [
              Text("$secondPlayerName (O)",
                style: TextThemeApp.font25Regular(const Color(0xfffc0e85))
              ),
              Text("Score : $scorePlayer_2",
                style: TextThemeApp.font25Regular(const Color(0xfffc0e85))
              )
            ],
          ),
        ],
      ),
    );
  }
}