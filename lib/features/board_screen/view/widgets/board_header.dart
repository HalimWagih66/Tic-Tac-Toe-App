import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/core/utils/text_theme_app/text_theme_app.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';


class BoardHeader extends StatelessWidget {
  final int scorePlayer_1;
  final int scorePlayer_2;

  const BoardHeader({super.key, required this.scorePlayer_1,required this.scorePlayer_2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("${Provider.of<PlayersNamesProvider>(context).firstPlayerName} (X)",
                style: TextThemeApp.font25Regular(const Color(0xff0075fb))
              ),
              Text("Score : $scorePlayer_1", style: TextThemeApp.font25Regular(const Color(0xff0075fb))
              )
            ],
          ),
          Column(
            children: [
              Text("${Provider.of<PlayersNamesProvider>(context,listen: false).secondPlayerName} (O)",
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