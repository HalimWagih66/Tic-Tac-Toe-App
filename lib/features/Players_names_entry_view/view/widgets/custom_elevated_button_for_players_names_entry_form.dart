import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/choose%20the%20board/view/choose_board_view.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';

class CustomElevatedButtonForPlayersNamesEntryForm extends StatelessWidget {
  const CustomElevatedButtonForPlayersNamesEntryForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style:ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical:15),
              backgroundColor: const Color(0xD50099cb),
              elevation: 10
          ),
          onPressed: () {
            Navigator.pushNamed(context, ChooseBoardView.routeName);
            checkInputsValidates(context);
          },
          child: const Text(
            "START GAME",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
  void checkInputsValidates(BuildContext context) {
    if (Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName == null) {
      Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName = "player 1";
    }
    if (Provider.of<PlayersNamesProvider>(context,listen: false).secondPlayerName == null) {
      Provider.of<PlayersNamesProvider>(context,listen: false).secondPlayerName = "player 2";
    }
  }
}
