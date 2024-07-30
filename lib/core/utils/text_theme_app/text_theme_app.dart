import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextThemeApp {
  static font68Bold(Color color) {
    return TextStyle(
        color: color,
        fontSize: 68.sp,
        fontFamily: 'LuckiestGuy',
        fontWeight: FontWeight.w600);
  }

  static font45Regular(Color color) {
    return TextStyle(color: color, fontSize: 30.sp, fontFamily: 'XO2');
  }

  static font30Regular({required Color color, required String title}) {
    return TextStyle(
      color: color,
      fontSize: 50.sp,
      fontFamily: 'XO2',
      shadows: [
        Shadow(
          color: title == 'X'
              ? const Color(0xff0075fb)
              : const Color(0xfffc0e85), //color shadow,
          blurRadius: 50.sp,
          offset: const Offset(1.0, 3.0),
        ),
      ],
    );
  }

  static font25Regular(Color color) {
    return TextStyle(
        color: color,
        fontFamily: 'XO2',
        fontSize: 25.sp,
        fontWeight: FontWeight.w400
    );
  }
}
