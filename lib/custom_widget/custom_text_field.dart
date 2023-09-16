import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';
import '../utils/custom_text.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onSubmit;
  final int? maxLine;
  final int? minLine;
  final int? maxLength;
  final String? hintText;
  final String? counterText;
  final List<TextInputFormatter>? formatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isEnabled;
  final bool isObscure;
  final Color fillColor;
  final double? borderRadius;
  final TextAlign textAlign;
  final BoxConstraints? suffixIconConstraint;

  const CustomTextField({
    Key? key,
    this.isEnabled = true,
    this.isObscure = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.fillColor = CustomAppColor.kWhiteColor,
    this.onChange,
    this.onSubmit,
    this.maxLine,
    this.minLine,
    this.maxLength,
    this.hintText,
    this.counterText,
    this.formatters,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius,
    this.textAlign = TextAlign.start,
    this.suffixIconConstraint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isEnabled,
      obscureText: isObscure,
      onChanged: (text) {
        if(onChange!=null){
          onChange!(text);
        }
      },
      onSubmitted: (text){
        if(onSubmit != null){
          onSubmit!(text);
        }
      },
      inputFormatters: formatters,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      minLines: minLine,
      maxLines: maxLine,
      maxLength: maxLength,
      textAlign: textAlign,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraint,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        counterText: counterText,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: CustomAppColor.kGreyColor,
          fontFamily: CustomTextSizing.kPoppinsFontFamily,
        ),
        counterStyle: const TextStyle(
          color: CustomAppColor.kGreyColor,
        ),
        filled: true,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius ?? 10.0,
            ),
          ),
          borderSide: const BorderSide(
            width: 2.0,
            color: CustomAppColor.kWhiteColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius ?? 10.0,
            ),
          ),
          borderSide: const BorderSide(
            width: 2.0,
            color: CustomAppColor.kGreyColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius ?? 10.0,
            ),
          ),
        ),
      ),
    );
  }
}
