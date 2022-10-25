import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';

class CancelJobs extends StatefulWidget {
  const CancelJobs({Key? key}) : super(key: key);

  @override
  State<CancelJobs> createState() => _CancelJobsState();
}

class _CancelJobsState extends State<CancelJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        leading: Center(
          child: Image.asset(
            "assets/Arrow 5.png",
            height: 18,
          ),
        ),
        centerTitle: true,
        title: CustomText(
          title: "Job detail",
          color: kBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 19,
        ),
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
                decoration: BoxDecoration(
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
            CustomText(
              title: "Job Status",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(height: 31.h),
            FAProgressBar(
              currentValue: 10,
              size: 10,
              progressColor: kSecondaryColor,
              backgroundColor: kRedColor,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Hired",
                        color: kBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        title: "(21/06/2022)",
                        color: kBlackColor.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
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
                        title: "Cancelled",
                        color: kBlackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        title: "(21/06/2022)",
                        color: kBlackColor.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              title: "Reason",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 15.h,
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
          ],
        ),
      ),
    );
  }
}
