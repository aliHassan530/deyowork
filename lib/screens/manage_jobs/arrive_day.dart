import 'package:dyou/screens/message/chat_screen.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/appBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';

class ArriveDay extends StatefulWidget {
  const ArriveDay({Key? key}) : super(key: key);

  @override
  State<ArriveDay> createState() => _ArriveDayState();
}

class _ArriveDayState extends State<ArriveDay> {
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
              "assets/Arrow 5.png",
              height: 18,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarText(
          title: "Job Detail",
        ),
      ),
      body: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                      height: 300,
                      width: double.infinity,
                      child: ThemeService().theme == ThemeMode.dark
                          ? Image.asset(
                              "assets/Map (1) Black.png",
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              "assets/Map.png",
                              fit: BoxFit.cover,
                            )),
                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Container(
                  //     margin:
                  //         EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  //     child: CustomButton(
                  //       onPressed: () {},
                  //       elevation: 3,
                  //       btnColor: kSecondaryColor,
                  //       title: "Submit work",
                  //       fontSize: 14,
                  //       btnRadius: 8,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  CustomText(
                    title: "Fix Budget",
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
                    title: "\$120",
                    color: ThemeService().theme == ThemeMode.dark
                        ? kGreyLightColor
                        : kBlackLightColor.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
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
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: kSecondaryColor.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/dashicons_car.png",
                          height: 22,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomText(
                          title: "Worker is on its way",
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomText(
                    title: "Job Status",
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  SizedBox(height: 31.h),
                  FAProgressBar(
                    currentValue: 10,
                    size: 10,
                    progressColor: kSecondaryColor,
                    backgroundColor: kGreyLightColor,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "Hired on",
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kGreyColor
                                  : kBlackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              title: "(21/06/2022)",
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kMainColor
                                  : kBlackColor.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "Arrived on",
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kGreyColor
                                  : kBlackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              title: "(21/06/2022)",
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kMainColor
                                  : kBlackColor.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "Completed",
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kGreyColor
                                  : kBlackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              title: "(21/06/2022)",
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kMainColor
                                  : kBlackColor.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Helper.toScreen(context, ChatScreen());
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kSecondaryColor),
                      ),
                      child: Center(
                        child: CustomText(
                          title: "chat",
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kBlackColorText,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
