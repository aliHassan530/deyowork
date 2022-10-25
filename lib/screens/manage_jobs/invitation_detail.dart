import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';

class InvitationDetail extends StatefulWidget {
  const InvitationDetail({Key? key}) : super(key: key);

  @override
  State<InvitationDetail> createState() => _InvitationDetailState();
}

class _InvitationDetailState extends State<InvitationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
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
        title: CustomText(
          title: "Job Detail",
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
              height: 10,
            ),
            CustomText(
              title: "\$120",
              color: kBlackColor.withOpacity(0.5),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomText(
                  title: "Invited",
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
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
