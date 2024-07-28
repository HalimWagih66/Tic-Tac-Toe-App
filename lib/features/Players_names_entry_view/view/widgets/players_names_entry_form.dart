import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/core/utils/widgets/custom_form_field.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';

class PlayersNamesEntryForm extends StatelessWidget {
  const PlayersNamesEntryForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFormField(
          textInputAction: TextInputAction.next,
          prefixText: "X",
          labelText: "Player One", prefixTextColor: const Color(0xffe41c58), onSaved: (String? input) {
          Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName = input;
        },
        ),
        const SizedBox(height: 33),
        CustomFormField(
          textInputAction: TextInputAction.done,
          prefixText: "O",
          prefixTextColor: const Color(0xfffcd034),
          labelText: "Player Two",
          onSaved: (String? input) {
          Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName = input;
        },
        ),
      ],
    );
  }
}
