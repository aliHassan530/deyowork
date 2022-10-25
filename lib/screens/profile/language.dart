import 'package:dyou/theme_service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_text.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  bool selectTick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        elevation: 2,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              "assets/Arrow - Up.png",
              height: 24.h,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarText(
          title: "language",
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "assets/Close Square.png",
                    height: 20,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kMainColor))),
              child: ListTile(
                onTap: () {
                  setState(() {
                    selectTick = true;
                  });
                },
                tileColor: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kGreyLightColor,
                title: CustomText(
                  title: "English",
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
                trailing: Image.asset(
                  "assets/Tick Square.png",
                  height: 25,
                  color: selectTick ? kGreenColor : kGreyColor,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kMainColor))),
              child: ListTile(
                onTap: () {
                  setState(() {
                    selectTick = false;
                  });
                },
                tileColor: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kGreyLightColor,
                title: CustomText(
                  title: "German",
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
                trailing: Image.asset(
                  "assets/Tick Square.png",
                  height: 25,
                  color: selectTick ? kGreyColor : kGreenColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
