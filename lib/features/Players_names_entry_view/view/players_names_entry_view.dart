import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/features/Players_names_entry_view/view/widgets/players_names_entry_view_body.dart';

class PlayersNamesEntryView extends StatelessWidget {
  static const routeName = "PlayersNamesEntryView";

  const PlayersNamesEntryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PlayersNamesEntryViewBody()
    );
  }


}
