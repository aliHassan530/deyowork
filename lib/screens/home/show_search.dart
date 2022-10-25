import 'package:dyou/screens/home/services_list.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/services_list_model.dart';
import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_textfield.dart';

class ShowSearchScreen extends StatefulWidget {
  const ShowSearchScreen({Key? key}) : super(key: key);

  @override
  State<ShowSearchScreen> createState() => _ShowSearchScreenState();
}

class _ShowSearchScreenState extends State<ShowSearchScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.73,
              child: CustomTextField(
                initialValue: "Plumber",
                contentPaddingTop: 10,
                fillColor: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kLightColorGreyText.withOpacity(0.2),
                textFontSize: 14,
                cursorColor: ThemeService().theme == ThemeMode.dark
                    ? kMainColor
                    : kBlackColorText,
                hintFontSize: 14,
                textColor: ThemeService().theme == ThemeMode.dark
                    ? kLightColorGreyText
                    : kBlackColorText,
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          search.clear();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CustomText(
                          title: "cancel",
                          fontSize: 13,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kLightColorGreyText
                              : kRedLightColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomText(
              title: "Showing Plumber nearest to your area",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: serviceList.length,
                        itemBuilder: (context, index) {
                          return PlumberWidget(
                            service: serviceDate[index],
                          );
                        }),
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
