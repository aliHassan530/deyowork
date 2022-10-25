import 'package:dyou/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class SupportEmail extends StatefulWidget {
  const SupportEmail({Key? key}) : super(key: key);

  @override
  State<SupportEmail> createState() => _SupportEmailState();
}

class _SupportEmailState extends State<SupportEmail> {
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
          title: "Email",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Email Title",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              fontSize: 13,
              textFontSize: 13,
              hintText: "Need an expert plumber",
              textColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              hintTextColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              fillColor: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              cursorColor: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
              hintFontSize: 13,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Email Body",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              fontSize: 13,
              textFontSize: 13,
              hintText:
                  "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ",
              hintFontSize: 13,
              maxLines: 5,
              textColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              hintTextColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              fillColor: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              cursorColor: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              onPressed: () {},
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Continue",
              fontSize: 14,
              btnRadius: 8,
            ),
          ],
        ),
      ),
    );
  }
}
