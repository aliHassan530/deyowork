import 'package:dyou/model/search_model.dart';
import 'package:dyou/screens/home/show_search.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_textfield.dart';
import '../../widget/search_suggestion_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.73,
              child: CustomTextField(
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Vector (Stroke).png",
                      height: 12.78,
                    ),
                  ],
                ),
                contentPaddingTop: 10,
                fillColor: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kLightColorGreyText.withOpacity(0.2),
                textFontSize: 14,
                cursorColor: kBlackColor,
                hintFontSize: 14,
                textColor: kGreyColor,
                hintTextColor: kGreyColor,
                hintText: "search",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Search by categories",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: searchList.length,
                itemBuilder: (context, index) {
                  return SearchSuggestionWidget(
                    search: searchData[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

