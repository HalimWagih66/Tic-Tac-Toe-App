import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/custom_back_ground_container.dart';
import 'package:tic_tac_toe_app/features/board_screen/view/widgets/custom_board_button.dart';
import 'package:tic_tac_toe_app/features/board_screen/view_model/board_view_model.dart';


class DisplayTheBoard extends StatelessWidget {
  const DisplayTheBoard({super.key});
  @override
  Widget build(BuildContext context) {
    var boardViewModel = Provider.of<BoardViewModel>(context);
    return CustomBackGroundContainer(
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: boardViewModel.numberOfBoardButtons,
                crossAxisSpacing: 7,
                mainAxisSpacing: 10
            ), itemBuilder: (context, index) {
              return CustomBoardButton(title: boardViewModel.boardState[index], position: index);
            },
              itemCount: boardViewModel.numberOfBoardButtons * boardViewModel.numberOfBoardButtons,
            ),
          ),
        ],
      ),
    );
  }
}
