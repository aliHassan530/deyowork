import 'package:flutter/material.dart';

import '../theme_service/theme_service.dart';
import '../utilites/constants.dart';
import 'custom_text.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    this.icon,
    required this.title,
    this.iconTrailing,
  });

  Widget? icon;
  String title;
  Widget? iconTrailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: kLightColorGreyText))),
      child: ListTile(
          minLeadingWidth: -2,
          leading: icon,
          tileColor: ThemeService().theme == ThemeMode.dark
              ? kDarkBlackLightColor
              : kGreyLightColor,
          title: CustomText(
            title: title,
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackLightColor,
          ),
          trailing: iconTrailing),
    );
  }
}
