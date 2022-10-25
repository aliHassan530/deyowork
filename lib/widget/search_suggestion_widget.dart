import 'package:dyou/model/search_model.dart';
import 'package:dyou/screens/home/show_search.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';

class SearchSuggestionWidget extends StatelessWidget {
  final SearchModel? search;

  SearchSuggestionWidget({
    Key? key,
    this.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.toScreen(context, ShowSearchScreen());
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: kMainColor,
        ))),
        margin: EdgeInsets.only(top: 20),
        child: Card(
          color: ThemeService().theme == ThemeMode.dark
              ? kDarkBlackLightColor
              : kMainColor,
          margin: EdgeInsets.zero,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                  title: search!.title,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColorText,
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomText(
                  title: search!.discripiton,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: kGreyColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
