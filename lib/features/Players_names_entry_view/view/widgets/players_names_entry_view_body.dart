import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/utils/text_theme_app/text_theme_app.dart';
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
      child:  Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Enter Player Names",style: TextThemeApp.font25Regular(Colors.white)),
            const SizedBox(height: 33),
            const PlayersNamesEntryForm(),
            const SizedBox(height: 33),
            const CustomElevatedButtonForPlayersNamesEntryForm(),
          ],
        ),
      ),
    );
  }
}
