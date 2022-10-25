import 'package:dyou/screens/billing_screen/billing_screen_billing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../utilites/helper.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class BillingCheckOut extends StatefulWidget {
  const BillingCheckOut({Key? key}) : super(key: key);

  @override
  State<BillingCheckOut> createState() => _BillingCheckOutState();
}

class _BillingCheckOutState extends State<BillingCheckOut> {
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
        decoration: BoxDecoration(
          gradient: ThemeService().theme == ThemeMode.dark
              ? LinearGradient(colors: [
                  Color(0xff70DBC6),
                  Color(0xFF484C4D).withOpacity(0.5),
                ], begin: Alignment.topCenter)
              : LinearGradient(colors: [
                  Color(0xff70DBC6),
                  Color(0xff70DBC6).withOpacity(0.5),
                ], begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Your Total Bill",
              color: kMainColor,
              fontSize: 15,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title: "\$120",
              color: kBlackColor,
              fontSize: 35,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: ThemeService().theme == ThemeMode.dark
                      ? kBlackColor
                      : kMainColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                child: ListView(
                  children: [
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
                      height: 20.h,
                    ),
                    CustomButton(
                      onPressed: () {
                        Helper.toScreen(context, BillingScreenBilling());
                      },
                      elevation: 3,
                      btnColor: kSecondaryColor,
                      title: "Pay now",
                      fontSize: 14,
                      btnRadius: 8,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title:
                          "information that dyou keeps the money until the job is done.. disputes are excluded from this ",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kLightColorGreyText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      onPressed: () {},
                      elevation: 3,
                      btnColor: kSecondaryColor,
                      title: "Down Payment",
                      fontSize: 14,
                      btnRadius: 8,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomText(
                      title:
                          "Starting from higher than 100 euro you can pay 20% of the total amount and remaining 80% when the job is done",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kLightColorGreyText,
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
    );
  }
}
