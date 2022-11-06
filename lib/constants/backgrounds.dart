import 'package:flutter/material.dart';

class CustomBackgrounds {
  static Container primaryGradientBackground({required Widget child}) =>
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [Color(0xffCBFEDE), Colors.white],
          ),
        ),
        child: child,
      );
}
