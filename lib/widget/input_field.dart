import 'package:flutter/material.dart';

import '../theme_service/theme_service.dart';
import '../utilites/constants.dart';
// prefix textfield

class InputField extends StatelessWidget {
  InputField({
    this.hintText,
    this.number,
    this.obscureText,
    this.suffix,
    this.validation,
    this.controller,
  });

  final hintText;
  final number;
  Widget? suffix;
  bool? obscureText;
  String? Function(String?)? validation;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:
              ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        keyboardType: number,
        controller: controller,
        validator: validation,
        style: TextStyle(
          color:
              ThemeService().theme == ThemeMode.dark ? kMainColor : kBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        obscureText: obscureText ?? false,
        cursorColor:
            ThemeService().theme == ThemeMode.dark ? kMainColor : kBlackColor,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(horizontal: 15),
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kWhiteLightColor),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kWhiteLightColor),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: kWhiteLightColor),
          ),
        ),
      ),
    );
  }
}
