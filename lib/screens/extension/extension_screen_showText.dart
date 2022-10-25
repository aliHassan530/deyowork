import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class ExtensionScreenShowText extends StatefulWidget {
  const ExtensionScreenShowText({Key? key}) : super(key: key);

  @override
  State<ExtensionScreenShowText> createState() =>
      _ExtensionScreenShowTextState();
}

class _ExtensionScreenShowTextState extends State<ExtensionScreenShowText> {
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
          title: "Extension Request",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Cancelling reason",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title: "xyz&xyz",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Extension Reason",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title:
                  "xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz ",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kBlackColorText,
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomButton(
                          onPressed: () {},
                          elevation: 3,
                          btnColor: kSecondaryColor,
                          title: "Yes",
                          fontSize: 14,
                          btnRadius: 8,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: kSecondaryColor),
                        ),
                        child: Center(
                          child: CustomText(
                            title: "No",
                            color: ThemeService().theme == ThemeMode.dark
                                ? kMainColor
                                : kBlackColor,

                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
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
