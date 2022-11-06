import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientText extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  GradientText({
    required this.text,
    this.fontWeight,
    this.fontsize = 16,
    // required this.gradient,
  });
  double? fontsize;
  final String text;
  FontWeight? fontWeight;

  // final Gradient gradient;
  final Gradient gradient = const LinearGradient(
    colors: [
      Color.fromRGBO(167, 112, 239, 1),
      Color.fromRGBO(207, 139, 243, 1),
      Color.fromRGBO(253, 185, 155, 1),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            // fontSize: 32.sp,
            fontSize: fontsize?.sp,
            fontWeight: fontWeight,
          )),
    );
  }
}
