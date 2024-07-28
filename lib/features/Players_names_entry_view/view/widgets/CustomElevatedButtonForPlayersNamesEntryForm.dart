
import 'package:flutter/material.dart';

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
            //Navigator.pushNamed(context, ChooseBoardView.routeName);
          },
          child: const Text(
            "START GAME",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
