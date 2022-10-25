import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
          title: "Payments",
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
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "We accept the following payment methods",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackLightColor,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/Vector (10).png",
                  height: 20,
                ),
                Image.asset(
                  "assets/Group 33394.png",
                  height: 30,
                ),
                Image.asset(
                  "assets/Group 33395.png",
                  height: 32,
                ),
                Image.asset(
                  "assets/Group 33398.png",
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              title: "Enter card number",
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
              keyboardType: TextInputType.number,
              hintText: "05247175052345",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Expairy Date ",
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
                        keyboardType: TextInputType.number,
                        hintText: "02/26",
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
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "CVV",
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
                        keyboardType: TextInputType.number,
                        hintText: "233",
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
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              onPressed: () {},
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Submit",
              fontSize: 14,
              btnRadius: 8,
            ),
          ],
        ),
      ),
    );
  }
}
