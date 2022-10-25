import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';

class JobApproveScreen extends StatefulWidget {
  const JobApproveScreen({Key? key}) : super(key: key);

  @override
  State<JobApproveScreen> createState() => _JobApproveScreenState();
}

class _JobApproveScreenState extends State<JobApproveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: kMainColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              "assets/Arrow 5.png",
              height: 20,
            ),
          ),
        ),
        centerTitle: true,
        title: CustomText(
          title: "Approve work",
          color: kBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 19,
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Image.asset(
                  "assets/Close Square.png",
                  height: 20,
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              "assets/undraw_fireworks_re_2xi7 1.png",
              height: 238,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              title: "Congratulations",
              color: kSecondaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title: "your job is completed ",
              color: kBlackColorText,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            Divider(
              color: kBlackColorText.withOpacity(0.3),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Job Title",
              color: kBlackColor,
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
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title:
                  "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
              color: kBlackLightColor,
              lineHeight: 1.4,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Fix Budget",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "\$120",
              color: kBlackLightColor.withOpacity(0.8),
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
                  color: kBlackColor,
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
                maxLines: 1,
              ),
              trailing: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kPurPleColor,
                    ),
                  ),
                ),
                child: CustomText(
                  title: "view profile",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: kPurPleColor,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
