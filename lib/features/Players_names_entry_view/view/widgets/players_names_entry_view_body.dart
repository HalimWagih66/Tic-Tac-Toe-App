import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';
import 'players_names_entry_form.dart';
import 'custom_elevated_button_for_players_names_entry_form.dart';
class PlayersNamesEntryViewBody extends StatelessWidget {
  const PlayersNamesEntryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          color: Color(0xff1a1d50)
      ),
      child: const Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Enter Player Names",style: TextStyle(color: Colors.white,fontFamily: "XO2",fontSize: 30),),
            SizedBox(height: 33),
            PlayersNamesEntryForm(),
            SizedBox(height: 33),
            CustomElevatedButtonForPlayersNamesEntryForm(),
          ],
        ),
      ),
    );
  }

  void checkInputs(BuildContext context) {
    if (Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName == null) {
      Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName = "player 1";
    }
    if (Provider.of<PlayersNamesProvider>(context,listen: false).secondPlayerName == null) {
      Provider.of<PlayersNamesProvider>(context,listen: false).secondPlayerName = "player 2";
    }
  }
}
