import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_text.dart';

class ImpressumScreen extends StatefulWidget {
  const ImpressumScreen({Key? key}) : super(key: key);

  @override
  State<ImpressumScreen> createState() => _ImpressumScreenState();
}

class _ImpressumScreenState extends State<ImpressumScreen> {
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
          title: "Imprint",
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 148,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Rectangle 74.png"),
              ),
            ),
            child: Center(
              child: Image.asset(
                "assets/image 3 (2).png",
                height: 33,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "w",
                          style: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kMainColor
                                : kBlackColor,
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text:
                              "e started this company in 2022. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem",
                          style: TextStyle(
                            fontSize: 14,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kMainColor
                                : kBlackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  title:
                      "e started this company in 2022. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumloreme\nstarted this company in 2022. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem\n\n e started this company in 2022. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumloreme started this company in 2022. lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem",
                  fontSize: 14,
                  lineHeight: 1.3,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
