import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListSubHeading extends StatelessWidget {
  const ListSubHeading({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30.w, 15.h, 0, 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 24.sp,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
