import 'package:dyou/screens/profile/support_email.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/profile_widget.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
          title: "Support",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Helper.toScreen(context, SupportEmail());
              },
              child: ProfileWidget(
                icon: Image.asset(
                  "assets/Message.png",
                  height: 20,
                ),
                title: "Email Dyou",
                iconTrailing: Image.asset(
                  "assets/Arrow - Up Circle.png",
                  height: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
