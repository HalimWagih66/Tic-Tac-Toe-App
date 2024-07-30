import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe_app/features/Players_names_entry_view/view/Players_names_entry_view.dart';
import 'package:tic_tac_toe_app/features/provider/players_names_provider.dart';
import '../../../core/utils/widgets/custom_awesome_dialog.dart';
import '../../../core/utils/constant.dart';
class BoardViewModel extends ChangeNotifier{
  bool enabledButtons = true;
  late int numberOfBoardButtons;
  int scorePlayer_2 = 0;
  int scorePlayer_1 = 0;
  int numberOfFilledItems = 0;
  late List<String>  boardState;
  void initializeBoardState(){
    boardState = List.generate(numberOfBoardButtons * numberOfBoardButtons, (index) => ' ');
  }
  void checkThePlayer(int position){
    if (numberOfFilledItems % 2 == 0) {
      boardState[position] = "X";
      scorePlayer_1++;
      notifyListeners();
    } else {
      boardState[position] = "O";
      scorePlayer_2++;
      notifyListeners();
    }
    numberOfFilledItems++;
  }
  bool validateTheBoard(String playerSymbol,int numberOfDigitsInLine){
    if(traversalOnBoardHorizontal(playerSymbol: playerSymbol,numberOfDigitsInLine: numberOfDigitsInLine)){
      return true;
    }
    if(traversalOnBoardVertical(playerSymbol: playerSymbol,numberOfDigitsInLine: numberOfDigitsInLine)){
      return true;
    }
    if (traversalADiagonalLineFromNorthToRight(playerSymbol: playerSymbol,numberOfDigitsInLine: numberOfDigitsInLine)) {
      return true;
    }
    if(traversalADiagonalLineFromRightToLeft(playerSymbol: playerSymbol,numberOfDigitsInLine: numberOfDigitsInLine)){
      return true;
    }
    return false;
  }

  bool traversalOnBoardHorizontal({required String playerSymbol, required int numberOfDigitsInLine}){
    for(int i = 0;i < boardState.length ; i+=numberOfDigitsInLine){
      if(lineTraversalInHorizontal(playerSymbol:playerSymbol,numberOfDigitsInLine: numberOfDigitsInLine,startDigitInNewLine: i)){
        return true;
      }
    }
    return false;
  }
  bool lineTraversalInHorizontal({required String playerSymbol, required int numberOfDigitsInLine, required int startDigitInNewLine}){
    for(int i = startDigitInNewLine;i < startDigitInNewLine+numberOfDigitsInLine ; i++){
      if(boardState[i] != playerSymbol){
        return false;
      }
    }
    return true;
  }

  bool traversalOnBoardVertical({required String playerSymbol, required int numberOfDigitsInLine}){
    for(int i = 0;i < numberOfDigitsInLine ; i++){
      if(lineTraversalInVertical(playerSymbol:playerSymbol,numberOfDigitsInLine: numberOfDigitsInLine,startDigitInNewLine: i)){
        return true;
      }
    }
    return false;
  }

  bool lineTraversalInVertical({required String playerSymbol, required int numberOfDigitsInLine, required int startDigitInNewLine}){
    for(int i = startDigitInNewLine;i < boardState.length ; i+=numberOfDigitsInLine){
      if(boardState[i] != playerSymbol){
        return false;
      }
    }
    return true;
  }
  bool traversalADiagonalLineFromNorthToRight({required String playerSymbol, required int numberOfDigitsInLine}){
    for(int i = 0;i < numberOfDigitsInLine ; i++){
      if(boardState[((i * numberOfDigitsInLine) + i)] != playerSymbol){
        return false;
      }
    }
    return true;
  }
  bool traversalADiagonalLineFromRightToLeft({required String playerSymbol, required int numberOfDigitsInLine}){
    for(int i = 0;i < numberOfDigitsInLine ; i++){
      if(boardState[((i * numberOfDigitsInLine) + numberOfDigitsInLine -i) - 1 ] != playerSymbol){
        return false;
      }
    }
    return true;
  }

  bool checkWinner(String playerSymbol,int counterButton) {
      return validateTheBoard(playerSymbol,counterButton);
  }
  Future<void> onUserClick(int position,BuildContext context) async {
    if (boardState[position] != ' ' && enabledButtons) {
      return;
    }
    if (numberOfFilledItems % 2 == 0) {
      boardState[position] = "X";
      scorePlayer_1++;
    } else {
      boardState[position] = "O";
      scorePlayer_2++;
    }
    numberOfFilledItems++;
    if(numberOfFilledItems >= numberOfBoardButtons + numberOfBoardButtons - 1){
      if (checkWinner("X", numberOfBoardButtons)) {
        await executeWinnerPlayerX(context);
      } else if (checkWinner("O", numberOfBoardButtons)) {
        await executeWinnerPlayerO(context);
      } else if (numberOfBoardButtons * numberOfBoardButtons == numberOfFilledItems) {
        await playerDrawExecution(context);
      }
    }

    notifyListeners();
  }

  Future<void> executeWinnerPlayerX(BuildContext context) async {
    enabledButtons = false;
    notifyListeners();
    await Future.delayed(const Duration(seconds: timerFutureDelayed), () {
      displayAwesomeDialogForPlayerWinner(context: context,winnerName: Provider.of<PlayersNamesProvider>(context,listen: false).firstPlayerName!);
    });
    scorePlayer_1 += 5;
    numberOfFilledItems = 0;
  }

  void displayAwesomeDialogForPlayerWinner({required BuildContext context, required String winnerName}) {
    customAwesomeDialog(
      btnOkOnPress: () {
        enabledButtons = true;
        initializeBoardState();
        notifyListeners();
      },
      btnCancelOnPress: (){
        btnCancelOnPressInAwesomeDialog(context);
      },
      context: context,
      desc: "You win, $winnerName",
    );
  }

  Future<void> executeWinnerPlayerO(BuildContext context)async{
    enabledButtons = false;
    notifyListeners();
    await Future.delayed(const Duration(seconds: timerFutureDelayed), () {
      displayAwesomeDialogForPlayerWinner(context: context,winnerName: Provider.of<PlayersNamesProvider>(context,listen: false).secondPlayerName!);
      numberOfFilledItems = 0;
      scorePlayer_2 += 5;
    });
  }

  Future<void> playerDrawExecution(BuildContext context)async{
    numberOfFilledItems = 0;
    enabledButtons = false;
    notifyListeners();
    await Future.delayed(
      const Duration(seconds: timerFutureDelayed),
          () {
        displayAwesomeDialogInCaseNotFoundWinner(context);
      },
    );
  }

  void displayAwesomeDialogInCaseNotFoundWinner(BuildContext context) {
    customAwesomeDialog(
      context: context,
      btnOkOnPress: () {
        enabledButtons = true;
        initializeBoardState();
        notifyListeners();
      },
      desc: "Unfortunately no one won",
      dialogType: DialogType.warning,
      btnCancelOnPress: () {
        btnCancelOnPressInAwesomeDialog(context);
      },
    );
  }

  void btnCancelOnPressInAwesomeDialog(BuildContext context) {
    GoRouter.of(context).replace(PlayersNamesEntryView.routeName);
    Provider.of<PlayersNamesProvider>(context, listen: false).firstPlayerName = "";
    Provider.of<PlayersNamesProvider>(context, listen: false).secondPlayerName = "";
  }
}