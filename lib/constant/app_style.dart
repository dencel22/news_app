import 'package:flutter/material.dart';

class AppStyle {
  static const Color kWhite = Color(0xffffffff);
  static const Color kLightWhite = Color(0xffeff5f4);
  static const Color kLighterWhite = Color(0xfffcfcfc);

  static const Color kgrey = Color(0xff9397a0);
  static const Color kLightGrey = Color(0xffa7a7a7);

  static const Color kBlue = Color(0xff5474fd);
  static const Color kLightBlue = Color(0xff83b1ff);
  static const Color kLighterBlue = Color(0xffc1d4f9);

  static const Color kDarkBlue = Color(0xff19202d);

  final borderRadius = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide.none,
  );
}
