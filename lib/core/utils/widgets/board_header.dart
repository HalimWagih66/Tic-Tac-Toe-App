import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/players_names_provider.dart';

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
                style: const TextStyle(
                    color: Color(0xff0075fb),
                    fontFamily: 'XO2',
                    fontSize: 26,
                  fontWeight: FontWeight.w400
                ),
              ),
              Text("Score : $scorePlayer_1",
                style: const TextStyle(
                    color: Color(0xff0075fb),
                    fontFamily: 'XO2',
                    fontSize: 26,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
          Column(
            children: [
              Text("${Provider.of<PlayersNamesProvider>(context).secondPlayerName} (O)",
                style: const TextStyle(
                    color: Color(0xfffc0e85),
                    fontFamily: 'XO2',
                    fontSize: 26,
                    fontWeight: FontWeight.w400
                ),
              ),
              Text("Score : $scorePlayer_2",
                style: const TextStyle(
                    color: Color(0xfffc0e85),
                    fontFamily: 'XO2',
                    fontSize: 26,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
