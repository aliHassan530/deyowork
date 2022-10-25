import 'package:dyou/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          title: "Edit Profile",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              title: "Change Password",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              obscureText: true,
              hintText: "change your Password",
              textFontSize: 13,
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
              title: "Change your E-Mail adress",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: "current E-Mail Address",
              textFontSize: 13,
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
              title: "Change your mobile number",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: "current mobile number",
              textFontSize: 13,
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
              height: 50.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kGreyLightColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: CustomText(
                title: "Delete account",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: kRedColor,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        child: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: () {},
                elevation: 3,
                btnColor: kSecondaryColor,
                title: "Save changes",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                btnRadius: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
