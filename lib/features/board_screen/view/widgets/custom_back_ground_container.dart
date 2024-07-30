import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
        top: 33, left: 10, right: 10, bottom: 10),
    decoration: BoxDecoration(
    border: Border.all(width: 1, style: BorderStyle.solid),
    borderRadius: const BorderRadius.only(
    topRight: Radius.circular(30),
    topLeft: Radius.circular(30)),
    color: Colors.white10,
    ),
      child: child,
    );
  }
}
