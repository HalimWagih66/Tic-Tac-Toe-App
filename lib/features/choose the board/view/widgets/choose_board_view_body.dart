import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/features/choose%20the%20board/view/widgets/custom_text_button_for_board_choose.dart';

class ChooseBoardViewBody extends StatelessWidget {
  const ChooseBoardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
          color: Color(0xff1a1d50)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 0.15,
            child:  const CustomTextButtonForBoardChoose(itemCount: 3, color: Color(0xb0f7017f),),
          ),
          const SizedBox(
            height: 25,
          ),
          const CustomTextButtonForBoardChoose(itemCount: 6, color: Color(0xff9b81d2),),
          const SizedBox(
            height: 25,
          ),
          Transform.rotate(
              angle: 0.15,
              child: const CustomTextButtonForBoardChoose(itemCount: 9,color: Color(0xbd0371fc),)
          ),
        ],
      ),
    );
  }
}
