import 'package:dyou/model/billing_model.dart';
import 'package:dyou/screens/billing_screen/billing_checkout.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class BillingWidget extends StatelessWidget {
  final BillingModel? billing;

  BillingWidget({
    Key? key,
    this.billing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Card(
            margin: EdgeInsets.only(bottom: 1),
            color: ThemeService().theme == ThemeMode.dark
                ? kDarkBlackLightColor
                : kMainColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: CustomText(
                              title: billing?.title,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              maxLines: 1,
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kMainColor
                                  : kBlackColor,
                            ),
                          ),
                          trailing: Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/image 7 (3).png",
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: ThemeService().theme ==
                                                ThemeMode.dark
                                            ? kSecondaryColor
                                            : kPurPleColor,
                                      ),
                                    ),
                                  ),
                                  child: CustomText(
                                    title: "download",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kSecondaryColor
                                            : kPurPleColor,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Container(
                        child: ReadMoreText(
                          billing?.detail,
                          trimLines: 4,
                          style: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          lessStyle: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                          moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: "Fixed Price",
                                  color: ThemeService().theme == ThemeMode.dark
                                      ? kMainColor
                                      : kBlackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  title: billing!.price,
                                  color: ThemeService().theme == ThemeMode.dark
                                      ? kLightColorGreyText
                                      : kBlackColor.withOpacity(0.5),
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
                                  title: "Completed on",
                                  color: ThemeService().theme == ThemeMode.dark
                                      ? kMainColor
                                      : kBlackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomText(
                                  title: billing!.date,
                                  color: ThemeService().theme == ThemeMode.dark
                                      ? kLightColorGreyText
                                      : kBlackColor.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                    onPressed: () {
                      Helper.toScreen(context, BillingCheckOut());
                    },
                    textColor: kBlackColorText,
                    title: "See Details",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
