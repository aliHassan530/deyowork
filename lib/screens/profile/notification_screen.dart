import 'package:dyou/utilites/constants.dart';
import 'package:dyou/widget/appBar_widget.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        elevation: 1,
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
          title: "Notifications",
        ),
        actions: [
          Image.asset(
            "assets/Notification.png",
            height: 20.h,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: kGreyLightColor))),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  "assets/Discovery.png",
                  height: 30,
                ),
                minLeadingWidth: -4,
                title: CustomText(
                  title: "Jhon send you the proposal for your job post",
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColor,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                        title: "See details",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kSecondaryColor
                            : kPurPleColor,
                      ),
                    ),
                  ],
                ),
                trailing: Image.asset(
                  "assets/Group 33347.png",
                  height: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
