import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/core/utils/widgets/custom_elevated_Button.dart';
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
        child: CustomElevatedButton(title: "Start Game",onPressed: (){
          GoRouter.of(context).push(ChooseBoardView.routeName);
          checkInputsValidates(context);
        })
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
