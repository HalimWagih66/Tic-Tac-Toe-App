import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';
import '../../../Players_names_entry_view/view/Players_names_entry_view.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          GoRouter.of(context).replace(PlayersNamesEntryView.routeName);
          Provider.of<PlayersNamesProvider>(context, listen: false).firstPlayerName = "";
          Provider.of<PlayersNamesProvider>(context, listen: false).secondPlayerName = "";
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff7f54c5),
        ),
      ),
      backgroundColor: const Color(0xff011A2A),
      title: const Text("X-O Game",
          style: TextStyle(
              fontFamily: 'XO2', fontSize: 34, color: Color(0xff7f54c5))),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity,65);
}
