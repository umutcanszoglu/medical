import 'package:flutter/material.dart';
import 'package:medical/const/theme.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.hintText,
    this.textColor,
    this.isObscure = false,
    this.isFilled = true,
    this.fillColor,
    this.iconColor,
    this.hintColor,
    this.prefixIcon,
    this.prefixIconColor,
    this.suffixIconButton,
    this.suffixIconColor,
    this.borderColor,
    this.keyboardType,
    this.controller,
    this.limit,
    this.counter,
  });
  final String? hintText;
  final Color? textColor;
  final bool isObscure;
  final bool isFilled;
  final Color? fillColor;
  final Color? iconColor;
  final Color? hintColor;
  final Icon? prefixIcon;
  final Color? prefixIconColor;
  final IconButton? suffixIconButton;
  final Color? suffixIconColor;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final int? limit;
  final Widget? counter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLength: limit,
      obscureText: isObscure,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        counter: counter,
        filled: isFilled,
        fillColor: fillColor,
        iconColor: iconColor,
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIconButton,
        suffixIconColor: suffixIconColor,
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor),

        //border styles
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? CColors.orange, width: 3),
          borderRadius: BorderRadius.circular(32),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? CColors.orange, width: 3),
          borderRadius: BorderRadius.circular(32),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? CColors.orange, width: 3),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}
