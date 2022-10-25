import 'package:dyou/screens/extension/extension_screen_showText.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/appBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({Key? key}) : super(key: key);

  @override
  State<ExtensionScreen> createState() => _ExtensionScreenState();
}

class _ExtensionScreenState extends State<ExtensionScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              "assets/Arrow 5.png",
              height: 18,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarText(
          title: "Extension Request",
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
              title: "Extension Duaration",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColorText,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              keyboardType: TextInputType.number,
              hintText: "xyz&xyz",
              textFontSize: 13,
              textColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              hintTextColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              fillColor: ThemeService().theme == ThemeMode.dark
                  ? kBlackColor
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
              title: "Extension Reason",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColorText,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: "xyz&xyz",
              textFontSize: 13,
              hintFontSize: 13,
              textColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              hintTextColor: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
              fillColor: ThemeService().theme == ThemeMode.dark
                  ? kBlackColor
                  : kGreyLightColor,
              cursorColor: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
              maxLines: 5,
            ),
            SizedBox(
              height: 70.h,
            ),
            CustomButton(
              onPressed: () {
                Helper.toScreen(context, ExtensionScreenShowText());
              },
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Submit Request",
              fontSize: 14,
              btnRadius: 8,
            ),
          ],
        ),
      ),
    );
  }
}
