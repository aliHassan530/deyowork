import 'package:dyou/utilites/constants.dart';
import 'package:dyou/widget/custom_button.dart';
import 'package:dyou/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../widget/custom_text.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 160.h,
              child: Center(
                  child: Image.asset(
                "assets/image 3 (2).png",
                height: 33,
              )),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: ThemeService().theme == ThemeMode.dark
                      ? kBlackColor
                      : kMainColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18)),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "Forgot Password",
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColor,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title:
                          "Don’t Worry It Happens. Please Enter The Email Or Mobile Number Acossiate With This Account",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: kGreyColor,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            "assets/Vector (2).png",
                            height: 20,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kMainColor
                                : kBlackColor,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InputField(
                            controller: email,
                            hintText: "User@gmail.com",
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 90.h,
                    ),
                    CustomButton(
                      btnColor: kSecondaryColor,
                      title: "Continue",
                      fontSize: 14,
                      btnRadius: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
