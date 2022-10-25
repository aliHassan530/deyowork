import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../theme_service/theme_service.dart';
import '../utilites/constants.dart';

class AppbarText extends StatelessWidget {
  const AppbarText({
    this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      title: title,
      color:
          ThemeService().theme == ThemeMode.dark ? kMainColor : kBlackColorText,
      fontWeight: FontWeight.w500,
      fontSize: 19,
    );
  }
}
