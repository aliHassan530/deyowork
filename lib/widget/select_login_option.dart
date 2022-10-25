import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class SelectLoginOption extends StatelessWidget {
  SelectLoginOption({
    this.image,
    this.title,
    this.color,
    this.textColor,
  });

  final image;
  final title;
  Color? color;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
      child: ListTile(
        visualDensity: const VisualDensity(
          vertical: -2,
        ),
        leading: Image.asset(
          image,
          width: 55,
          height: 27.h,
        ),
        title: Center(
          child: Container(
            margin: EdgeInsets.only(right: 35),
            child: CustomText(
              title: title,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
