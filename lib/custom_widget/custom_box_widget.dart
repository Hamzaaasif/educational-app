import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomBoxtWidget extends StatelessWidget {
  final String boxName;
  final double? textFontSize;
  final Function onTap;
  final Color? bgColor;
  final Color? textColor;
  final Gradient? gradientColor;
  final double borderRadius;
  final double? boxWidth;
  final double? boxHeight;

  const CustomBoxtWidget({
    Key? key,
    required this.boxName,
    required this.onTap,
    this.borderRadius = 30,
    this.bgColor,
    this.textColor, this.boxWidth,
    this.gradientColor = CustomAppColor.buttonGradient,
    this.textFontSize = 16.0, this.boxHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      width: boxWidth,
      decoration: BoxDecoration(
        gradient: gradientColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 30.0,),
      child: Row(
        children: [
          Text(
            boxName,
            style: TextStyle(
              color: CustomAppColor.kWhiteColor,
              fontFamily: CustomTextSizing.kPoppinsFontFamily,
              fontSize: textFontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
