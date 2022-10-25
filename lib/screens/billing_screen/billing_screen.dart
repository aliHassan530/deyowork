import 'package:dyou/model/billing_model.dart';
import 'package:dyou/screens/billing_screen/billing_checkout.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/appBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/billing_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class Billing extends StatefulWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              "assets/Arrow - Up.png",
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColorText,
              height: 24.h,
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
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Image.asset(
                  "assets/Group 33589.png",
                  height: 11,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColorText,
                ),
              )
            ],
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              color: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
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
                      title: "Completed job",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/image 7 (3).png",
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          title: "Create PDF",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: "You Spend ",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kGreyColor,
                ),
                CustomText(
                  title: "\$300",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: billingList.length,
                itemBuilder: (context, index) {
                  return BillingWidget(
                    billing: billingData[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}

