import 'package:flutter/material.dart';

import '../theme_service/theme_service.dart';
import 'custom_inkwell_btn.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.onPressed,
      this.btnHeight,
      this.btnWidth,
      this.btnColor,
      this.btnBorderWidth,
      this.btnBorderColor,
      this.btnRadius,
      this.title,
      this.textColor,
      this.fontSize,
      this.elevation,
      this.fontWeight,
      Key? key})
      : super(key: key);
  Function? onPressed;
  double? btnHeight;
  double? btnWidth;
  Color? btnColor;
  double? btnBorderWidth;
  Color? btnBorderColor;
  double? btnRadius;
  String? title;
  Color? textColor;
  double? elevation;
  double? fontSize;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onPressed,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.zero,
        child: Container(
          width: btnWidth ?? double.infinity,
          height: btnHeight ?? 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: ThemeService().theme == ThemeMode.dark
                ? LinearGradient(colors: [
                    Color(0xff70DBC6),
                    Color(0xFF484C4D).withOpacity(0.5),
                  ], begin: Alignment.topCenter)
                : LinearGradient(colors: [
                    Color(0xff70DBC6),
                    Color(0xff70DBC6).withOpacity(0.5),
                  ], begin: Alignment.topCenter),

            // color: ThemeService().theme == ThemeMode.dark
            //     ? gradient: LinearGradient(colors: [
            //   Color(0xff70DBC6),
            //   Color(0xff70DBC6).withOpacity(0.5),
            // ], begin: Alignment.topCenter),
            //     :
            //
            //   gradient: LinearGradient(colors: [
            //   Color(0xff70DBC6),
            // Color(0xff70DBC6).withOpacity(0.5),
            // ], begin: Alignment.topCenter),
            border: Border.all(
                width: btnBorderWidth == null ? 0 : btnBorderWidth!,
                color: btnBorderColor == null
                    ? Colors.transparent
                    : btnBorderColor!),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomText(
            title: title,
            color: textColor,
            textAlign: TextAlign.center,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
