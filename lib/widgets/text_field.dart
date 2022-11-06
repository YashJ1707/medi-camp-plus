import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obsecureText = false,
  }) : super(key: key);

  static final double textFontSize = 15.sp;
  final String hintText;
  final TextEditingController controller;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black12.withOpacity(0.08),
            offset: Offset(2, 4),
            blurRadius: 16,
            spreadRadius: 2)
      ]),
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        style: TextStyle(
          fontSize: textFontSize,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 18.h,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: textFontSize,
          ),
        ),
      ),
    );
  }
}
