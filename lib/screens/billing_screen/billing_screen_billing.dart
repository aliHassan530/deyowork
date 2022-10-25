import 'package:dyou/screens/billing_screen/congratulation.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class BillingScreenBilling extends StatefulWidget {
  const BillingScreenBilling({Key? key}) : super(key: key);

  @override
  State<BillingScreenBilling> createState() => _BillingScreenBillingState();
}

class _BillingScreenBillingState extends State<BillingScreenBilling> {
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
          title: "Billing",
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
              height: 140.h,
            ),
            Image.asset(
              "assets/undraw_fireworks_re_2xi7 1 (1).png",
              height: 238,
            ),
            SizedBox(
              height: 30.h,
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
              title: "you are just one step away to hire adam",
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackColorText,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: "card number",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackLightColor,
                ),
                CustomText(
                  title: "Edit",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Vector (10).png",
                    height: 10,
                  ),
                ],
              ),
              keyboardType: TextInputType.number,
              hintText: "05247175052345",
              textFontSize: 13,
              fillColor: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              cursorColor: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kGreyLightColor,
              textColor: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kGreyLightColor,
              hintTextColor: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kGreyLightColor,
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
                        fillColor: ThemeService().theme == ThemeMode.dark
                            ? kDarkBlackLightColor
                            : kGreyLightColor,
                        cursorColor: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kGreyLightColor,
                        textColor: ThemeService().theme == ThemeMode.dark
                            ? kLightColorGreyText
                            : kGreyLightColor,
                        hintTextColor: ThemeService().theme == ThemeMode.dark
                            ? kLightColorGreyText
                            : kGreyLightColor,
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
                        fillColor: ThemeService().theme == ThemeMode.dark
                            ? kDarkBlackLightColor
                            : kGreyLightColor,
                        cursorColor: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kGreyLightColor,
                        textColor: ThemeService().theme == ThemeMode.dark
                            ? kLightColorGreyText
                            : kGreyLightColor,
                        hintTextColor: ThemeService().theme == ThemeMode.dark
                            ? kLightColorGreyText
                            : kGreyLightColor,
                        textFontSize: 13,
                        hintFontSize: 13,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              color: kBlackLightColor.withOpacity(0.3),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Job Detail",
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Job Title",
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Need an expert Plumber",
              color: kGreyColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Job Description",
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title:
                  "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackLightColor,
              lineHeight: 1.4,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Fix Budget",
                        color: ThemeService().theme == ThemeMode.dark
                            ? kGreyLightColor
                            : kBlackLightColor.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        title: "\$120",
                        color: ThemeService().theme == ThemeMode.dark
                            ? kLightColorGreyText
                            : kBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Arrival Date",
                        color: ThemeService().theme == ThemeMode.dark
                            ? kGreyLightColor
                            : kBlackLightColor.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        title: "22-03-2022",
                        color: ThemeService().theme == ThemeMode.dark
                            ? kLightColorGreyText
                            : kBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CustomText(
                  title: "Hired",
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomText(
                  title: "(21/06/2022)",
                  color: kBlackColor.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 46,
                    width: 46,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/Ellipse 30.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              title: CustomText(
                title: "Adam",
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: ThemeService().theme == ThemeMode.dark
                    ? kGreyLightColor
                    : kBlackLightColor.withOpacity(0.8),
                maxLines: 1,
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ThemeService().theme == ThemeMode.dark
                          ? kSecondaryColor
                          : kPurPleColor,
                    ),
                  ),
                ),
                child: CustomText(
                  title: "view profile",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kSecondaryColor
                      : kPurPleColor,
                ),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            CustomButton(
              onPressed: () {
                Helper.toScreen(context, Congratulation());
              },
              elevation: 3,
              title: "Hire Now",
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
