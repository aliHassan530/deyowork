import 'package:dyou/utilites/constants.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../theme_service/theme_service.dart';
import 'custom_text.dart';

class ExpandTile extends StatefulWidget {
  const ExpandTile({
    this.title,
    this.detail,
  });

  final title;
  final detail;

  @override
  State<ExpandTile> createState() => _ExpandTileState();
}

class _ExpandTileState extends State<ExpandTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeService().theme == ThemeMode.dark
          ? kDarkBlackLightColor
          : kGreyLightColor,
      child: ExpansionTileCard(
        elevation: 3,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        baseColor: ThemeService().theme == ThemeMode.dark
            ? kDarkBlackLightColor
            : kGreyLightColor,
        expandedColor: ThemeService().theme == ThemeMode.dark
            ? kDarkBlackLightColor
            : kGreyLightColor,
        title: CustomText(
          title: widget.title,
          fontSize: 14,
          color: ThemeService().theme == ThemeMode.dark
              ? kLightColorGreyText
              : kBlackColorText,
          fontWeight: FontWeight.w500,
        ),
        expandedTextColor: kSecondaryColor,
        animateTrailing: true,
        trailing: AnimatedRotation(
          turns: _isExpanded ? .5 : 0,
          duration: Duration(seconds: 0),
          child: Container(
            child: Image.asset(
              "assets/Arrow - Up Circle2.png",
              height: 20,
            ),
          ),
        ),
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                widget.detail,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kLightColorGreyText
                      : kBlackColorText,
                  height: 1.5,
                ),
              )),
        ],
      ),
    );
  }
}
