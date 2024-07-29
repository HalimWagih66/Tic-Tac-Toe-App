// import 'package:flutter/material.dart';
//
// class BoardButton extends StatefulWidget {
//    final Function onBtnClick;
//    final String textButton;
//    final int position;
//    final int counterButton;
//    final Color colorText;
//    final double fontSize;
//    final bool enabledButton;
//    final int selectedButton;
//    const BoardButton(
//       {super.key,
//         required this.counterButton,
//       required this.colorText,
//       required this.textButton,
//
//       required this.onBtnClick,
//       required this.position,
//       required this.fontSize,
//       this.enabledButton = true,required this.selectedButton});
//
//   @override
//   State<BoardButton> createState() => _BoardButtonState();
// }
//
// class _BoardButtonState extends State<BoardButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Container(
//       width: double.infinity,
//       margin: const EdgeInsets.only(left: 3, right: 3, bottom: 3),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Color(0xffffffff),
//           padding:  EdgeInsets.zero
//           ),
//         onPressed: () {  },
//         ),
//         onPressed: widget.enabledButton == true
//             ? () {
//                 widget.onBtnClick(widget.position);
//               }
//             : null: Stack(
//           children: [
//             Text(
//               widget.textButton,
//               style: TextStyle(
//                 fontSize: widget.fontSize,
//                 fontFamily: 'XO2',
//                 fontWeight: FontWeight.w600,
//                 color: widget.textButton == 'X'
//                     ? const Color(0xff0075fb)
//                     : const Color(0xfffc0e85),
//                 shadows: [
//                   Shadow(
//                     color: widget.textButton == 'X'
//                         ? const Color(0xff0075fb)
//                         : const Color(0xfffc0e85), //color shadow,
//                     blurRadius: 20,
//                     offset: const Offset(1.0, 3.0),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               widget.textButton,
//               style: TextStyle(
//                   fontSize: widget.fontSize - 1,
//                   fontFamily: 'XO2',
//                   color: widget.selectedButton == false?Colors.black:widget.textButton == 'X'? const Color(0xff0075fb)
//                       : const Color(0xfffc0e85)),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
