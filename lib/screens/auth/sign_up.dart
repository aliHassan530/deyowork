import 'package:dyou/screens/bottom_bar/bottom_bar.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/helper.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/input_field.dart';
import '../../widget/select_login_option.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  bool selectTick = true;

  String? selectCountry;
  List _selection = ["Germany", "Pakistan", "America", "China", "India"];

  String? selectCity;
  List _selectionCity = ["Berlin", "Lahore", "New York", "Islamabad", "Delhi"];

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
                      title: "Sign up",
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
                          "PLease Enter The Following Details,We Can’t Wait To Have You On Our Platform",
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: kGreyColor,
                    ),
                    SizedBox(
                      height: 20.h,
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
                          margin: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            "assets/Vector (6).png",
                            height: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InputField(
                            controller: userName,
                            hintText: "User Name",
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
                          margin: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            "assets/Vector (7).png",
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InputField(
                            number: TextInputType.number,
                            controller: phoneNumber,
                            hintText: "0300 7600500",
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectTick = true;
                            });
                          },
                          child: Row(
                            children: [
                              CustomText(
                                title: "Normal user",
                                fontSize: 14,
                                color: kBlackLightColor,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/Tick Square.png",
                                height: 15,
                                color: selectTick ? kGreenColor : kGreyColor,
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectTick = false;
                            });
                          },
                          child: Row(
                            children: [
                              CustomText(
                                title: "Business user",
                                fontSize: 14,
                                color: kBlackLightColor,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/Tick Square.png",
                                height: 15,
                                color: selectTick ? kGreyColor : kGreenColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    CustomText(
                      title: "Please enter your tax id",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
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
                      textFontSize: 13,
                      hintText: "Please enter your tax id",
                      hintFontSize: 13,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "Country",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    // selectcountry
                    Container(
                      height: 48,
                      decoration: BoxDecoration(
                          color: ThemeService().theme == ThemeMode.dark
                              ? kDarkBlackLightColor
                              : kGreyLightColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton(
                        elevation: 0,
                        itemHeight: 65,
                        underline: Container(
                          height: 1.0,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.transparent, width: 0.0))),
                        ),
                        hint: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Germany",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kLightColorGreyText),
                            )),
                        dropdownColor: ThemeService().theme == ThemeMode.dark
                            ? kDarkBlackLightColor
                            : kGreyLightColor,
                        icon: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/Arrow 2.png",
                              height: 10,
                            )),
                        isExpanded: true,
                        value: selectCountry,
                        onChanged: (newvalue) {
                          setState(() {
                            selectCountry = newvalue as String?;
                          });
                        },
                        items: _selection.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  valueItem,
                                  style: TextStyle(
                                      fontSize: 14, color: kLightColorGreyText),
                                )),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "City",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    // selectcity
                    Container(
                      height: 48,
                      decoration: BoxDecoration(
                          color: ThemeService().theme == ThemeMode.dark
                              ? kDarkBlackLightColor
                              : kGreyLightColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton(
                        elevation: 0,
                        itemHeight: 65,
                        underline: Container(
                          height: 1.0,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.transparent, width: 0.0))),
                        ),
                        hint: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Berlin",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kLightColorGreyText),
                            )),
                        dropdownColor: ThemeService().theme == ThemeMode.dark
                            ? kDarkBlackLightColor
                            : kGreyLightColor,
                        icon: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/Arrow 2.png",
                              height: 10,
                            )),
                        isExpanded: true,
                        value: selectCity,
                        onChanged: (newvalue) {
                          setState(() {
                            selectCity = newvalue as String?;
                          });
                        },
                        items: _selectionCity.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  valueItem,
                                  style: TextStyle(
                                      fontSize: 14, color: kLightColorGreyText),
                                )),
                          );
                        }).toList(),
                      ),
                    ),

                    // postal Address
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "Postal code",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
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
                      keyboardType: TextInputType.number,
                      hintText: "380040404",
                      hintFontSize: 13,
                    ),

                    // street no

                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "Street no",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                      textFontSize: 13,
                      keyboardType: TextInputType.number,
                      hintText: "xyz-zyz-zyz",
                      hintFontSize: 13,
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

                    // Company name
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "Company name",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
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
                      textFontSize: 13,
                      hintText: "xyz&xyz",
                      hintFontSize: 13,
                    ),

                    // company type

                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title: "Company Type",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: kBlackLightColor,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                      textFontSize: 13,
                      hintText: "xyz&xyz",
                      hintFontSize: 13,
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
                      height: 25.h,
                    ),
                    Container(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "by siging up, you are agreeing to Our  ",
                              style: TextStyle(
                                color: kLightColorGreyText,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "Tetrm & Conditions",
                              style: TextStyle(
                                fontSize: 14,
                                color: kSecondaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: " and  ",
                              style: TextStyle(
                                fontSize: 14,
                                color: kLightColorGreyText,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                fontSize: 14,
                                color: kSecondaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
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
                      height: 50.h,
                    ),
                    SelectLoginOption(
                      textColor: kBlackLightColor,
                      color: kGreyLightColor,
                      title: "Login with google",
                      image: "assets/image 7 (2).png",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SelectLoginOption(
                      textColor: kMainColor,
                      color: kBlackColor,
                      title: "Login with Apple",
                      image: "assets/Vector (4).png",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SelectLoginOption(
                      textColor: kMainColor,
                      color: kBlueColor,
                      title: "Login with facebook",
                      image: "assets/Vector (5).png",
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
                        text: "joined in before? ",
                        style: TextStyle(
                            color: kLightColorGreyText,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            fontFamily: ""),
                      ),
                      TextSpan(
                        text: "Login",
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
    );
  }
}
