import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class Screen405 extends StatefulWidget {
  const Screen405({Key? key}) : super(key: key);

  @override
  State<Screen405> createState() => _Screen405State();
}

class _Screen405State extends State<Screen405> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80.h,
            ),
            Image.asset(
              "assets/undraw_page_not_found_re_e9o6 1.png",
              height: 201,
            ),
            SizedBox(
              height: 80.h,
            ),
            CustomText(
              title: "No Internet",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              title:
                  "Seems like your internet connection is slow or got damaged, as soon as it start runnig again you will be able to use this app again",
              color: kLightColorGreyText,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
            SizedBox(
              height: 80.h,
            ),
            CustomButton(
              onPressed: () {},
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Reload",
              fontSize: 14,
              btnRadius: 8,
            )
          ],
        ),
      ),
    );
  }
}
