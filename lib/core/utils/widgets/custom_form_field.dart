import 'package:flutter/material.dart';


class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.labelText, required this.prefixText, required this.prefixTextColor,required this.onChanged, required this.textInputAction});
  final String labelText;
  final String prefixText;
  final TextInputAction textInputAction;
  final Color prefixTextColor;
  final void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (newValue) {
        onChanged(newValue);
      },
      style: const TextStyle(color: Color(0xdb06d2f7),fontFamily: "XO2",fontSize:20),
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        focusColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1,color: Color(0xff2f2f72),style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(prefixText,style: TextStyle(color:prefixTextColor, fontFamily: "SeymourOne",fontSize: 30,fontWeight: FontWeight.w900),textAlign: TextAlign.center,),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          fontFamily: "XO2",
            fontSize: 22,
            color: Color(0xc72596be)
        ),
        filled: true,
        fillColor: const Color(0xff101032),
      )
    );
  }
}
