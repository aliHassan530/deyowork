import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
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
          title: "Check Out",
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
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              "assets/undraw_winners_re_wr1l 1 (1).png",
              height: 238,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomText(
              title: "Congratulations",
              color: kSecondaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title: "you have hired Adam for the job",
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackColorText,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomText(
              title: "Need an expert Plumber",
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            Divider(
              color: ThemeService().theme == ThemeMode.dark
                  ? kGreyLightColor
                  : kBlackLightColor.withOpacity(0.3),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              title:
                  "YOU CAN CHECK THE JOB STATUS IN YOUR\nJOBS MANAGEMENT SECTION",
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackLightColor,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              lineHeight: 1.4,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              onPressed: () {},
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Jobs Management",
              fontSize: 14,
              btnRadius: 8,
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
