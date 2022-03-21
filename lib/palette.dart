import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xffCC0000, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffb80000), //10%
      100: const Color(0xffa30000), //20%
      200: const Color(0xff8f0000), //30%
      300: const Color(0xff7a0000), //40%
      400: const Color(0xff660000), //50%
      500: const Color(0xff520000), //60%
      600: const Color(0xff3d0000), //70%
      700: const Color(0xff290000), //80%
      800: const Color(0xff140000), //90%
      900: const Color(0xff000000), //100%
    },
  );
} // you can
