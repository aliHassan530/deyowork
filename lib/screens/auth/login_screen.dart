import 'package:dyou/screens/auth/forgot_password.dart';
import 'package:dyou/screens/auth/sign_up.dart';
import 'package:dyou/screens/bottom_bar/bottom_bar.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_button.dart';
import 'package:dyou/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../widget/custom_text.dart';
import '../../widget/select_login_option.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isObsecure = true;

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
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColor,
                      title: "Login",
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title:
                          "Please Enter The Following Details, To Continue Using Your Account.",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: kGreyColor,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            "assets/Vector (2).png",
                            height: 20,
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
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/Vector (3).png",
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InputField(
                            controller: password,
                            obscureText: isObsecure,
                            hintText: "****************",
                            suffix: IconButton(
                                onPressed: () => setState(() {
                                      isObsecure = !isObsecure;
                                    }),
                                icon: isObsecure == false
                                    ? const Icon(
                                        Icons.visibility,
                                        color: kGreyColor,
                                      )
                                    : Icon(
                                        Icons.visibility_off,
                                        color: kGreyColor,
                                      )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Helper.toScreen(context, ForgotPassword());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: kPurPleColor,
                                ),
                              ),
                            ),
                            child: CustomText(
                              title: "Forgot Password",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: kPurPleColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      onPressed: () {
                        Helper.toScreen(
                            context,
                            BottomBar(
                              index: 0,
                            ));
                      },
                      elevation: 3,
                      btnColor: kSecondaryColor,
                      title: "Continue",
                      fontSize: 14,
                      btnRadius: 8,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Divider(
                            color: kGreyColor.withOpacity(0.5),
                          ),
                        ),
                        CustomText(
                          title: "OR",
                          color: kGreyColor.withOpacity(0.5),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Divider(
                            color: kGreyColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 63.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Helper.toScreen(context, BottomBar(index: 0));
                      },
                      child: SelectLoginOption(
                        textColor: kBlackLightColor,
                        color: kGreyLightColor,
                        title: "Login with google",
                        image: "assets/image 7 (2).png",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Helper.toScreen(context, BottomBar(index: 0));
                      },
                      child: SelectLoginOption(
                        textColor: kMainColor,
                        color: kBlackColor,
                        title: "Login with Apple",
                        image: "assets/Vector (4).png",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Helper.toScreen(context, BottomBar(index: 0));
                      },
                      child: SelectLoginOption(
                        textColor: kMainColor,
                        color: kBlueColor,
                        title: "Login with facebook",
                        image: "assets/Vector (5).png",
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        child: GestureDetector(
          onTap: () {
            Helper.toScreen(context, SignUp());
          },
          child: Container(
            height: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Didn’t join us yet? ",
                          style: TextStyle(
                              color: kLightColorGreyText,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: ""),
                        ),
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            fontSize: 14,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kDarkBlueColor
                                : kSecondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
