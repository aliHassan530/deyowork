import 'package:dyou/screens/extension/extension_screen.dart';
import 'package:dyou/screens/manage_jobs/arrive_day.dart';
import 'package:dyou/theme_service/theme_service.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/appBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../message/chat_screen.dart';
import 'cancel_job_enter_reason.dart';

class OnGoingJobsDetailScreen extends StatefulWidget {
  const OnGoingJobsDetailScreen({Key? key}) : super(key: key);

  @override
  State<OnGoingJobsDetailScreen> createState() =>
      _OnGoingJobsDetailScreenState();
}

class _OnGoingJobsDetailScreenState extends State<OnGoingJobsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        leading: InkWell(
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
          title: "Job detail",
        ),
        actions: [
          GestureDetector(
            onTap: () async {
              await showMenu<String>(
                  color: kGreyLightColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  context: context,
                  position: RelativeRect.fromLTRB(1000.0, 80.0, 40, 10),
                  items: <PopupMenuItem<String>>[
                    new PopupMenuItem<String>(
                      child: Container(
                          width: 130,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Helper.toScreen(
                                      context, CancelJobEnterReason());
                                },
                                child: CustomText(
                                  title: "Cancel Job",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                              Divider(
                                color: kBlackLightColor.withOpacity(0.3),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Helper.toScreen(context, ExtensionScreen());
                                },
                                child: CustomText(
                                  title: "Extension",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ]);
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_vert,
                size: 26,
                color: ThemeService().theme == ThemeMode.dark
                    ? kMainColor
                    : kBlackLightColor,
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
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
            CustomText(
              title: "Fix Budget",
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
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
            CustomButton(
              onPressed: () {
                Helper.toScreen(context, ChatScreen());
              },
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "open chat",
              fontSize: 14,
              btnRadius: 8,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              onPressed: () {
                Helper.toScreen(context, ArriveDay());
              },
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Check Location",
              fontSize: 14,
              btnRadius: 8,
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
