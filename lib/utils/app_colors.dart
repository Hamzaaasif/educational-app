import 'package:flutter/material.dart';

class CustomAppColor {
  CustomAppColor._();

  static const Color kBackgroundColorBlue = Color(0xFF7F6BE5);
  static const Color kBackgroundColorBlack = Color(0xFF111112);
  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kGreyColor = Color(0xFF949FA6);
  static const Color kDarkBlueColor = Color(0xFF433A72);
  static const Color kBottomColor = Color(0xFF232426);
  static const Color kSwitchColor = Color(0xFF6C63FF);
  static const Color kButtonGradientColor = Color(0xFF7260CC);
  static const Color kButtonGradientBottomColor = Color(0xFF312B50);
  static const Color kGoogleButtonColor = Color(0xFF7D6AE2);
  static const Color kButtonGradientBottom = Color(0xFF363E40);
  static const Color kBottomNavBarColor = Color(0xFF767194);
  static const Color kTransparentColor = Colors.transparent;


  static const Gradient appGradient = LinearGradient(
    colors: [
      CustomAppColor.kBackgroundColorBlue,
      CustomAppColor.kBackgroundColorBlack,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );


  static const Gradient buttonGradient = LinearGradient(
    colors: [
      CustomAppColor.kButtonGradientBottom,
      CustomAppColor.kDarkBlueColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient buttonGradient2 = LinearGradient(
    colors: [
      CustomAppColor.kButtonGradientColor,
      CustomAppColor.kButtonGradientBottomColor,
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const Gradient headingTextGradient = LinearGradient(
    colors: [
      CustomAppColor.kGreyColor,
      CustomAppColor.kWhiteColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

}
