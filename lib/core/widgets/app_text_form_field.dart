import 'package:doctoapp/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final bool obscureText;
  final Function(String?)? validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator!(value);
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        isDense: true,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        hintStyle: const TextStyle(color: ColorsManger.lightGreyColor),
        fillColor: ColorsManger.filledGreyColor,
        border: border ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManger.lightGreyColor,
                width: 1.4,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 206, 206, 206),
                width: 1.2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManger.mainBlue,
                width: 1.4,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
      ),
    );
  }
}
