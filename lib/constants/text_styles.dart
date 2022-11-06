import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle headingText = TextStyle(
      fontSize: 24.sp, fontFamily: 'Poppins', fontWeight: FontWeight.bold);
  static TextStyle CategoryAppBarTitle = TextStyle(
      color: Colors.black,
      fontSize: 26.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold);
  static TextStyle subheadingText = TextStyle(
      height: 1.h,
      fontSize: 20.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold);
  static TextStyle cardTitleStyle = TextStyle(
      fontFamily: 'Poppins', fontSize: 16.sp, fontWeight: FontWeight.w700);
  static TextStyle cardSubtitleStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle campContent =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500);
}
