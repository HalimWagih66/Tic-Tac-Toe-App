import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical:15),
          backgroundColor: const Color(0xD50099cb),
          elevation: 10
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20.sp),
      ),
    );
  }
}
