import 'package:dyou/utilites/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class ApproveOrDecline extends StatefulWidget {
  const ApproveOrDecline({Key? key}) : super(key: key);

  @override
  State<ApproveOrDecline> createState() => _ApproveOrDeclineState();
}

class _ApproveOrDeclineState extends State<ApproveOrDecline> {
  List<String> fileList = [
    "file1.mp4",
    "file.jpg",
  ];

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
          title: "Approval",
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
              height: 20.h,
            ),
            CustomText(
              title: "your job has been completed by",
              color: kBlackColorText,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title: "Adam Zampa",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50.h,
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
              height: 50.h,
            ),
            CustomText(
              title: "Work proof",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: fileList.length,
                  itemBuilder: (context, index) {
                    return SelectApproveFileTile(
                      title: fileList[index],
                    );
                  }),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              onPressed: () {},
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Review",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              btnRadius: 8,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: kRedLightColor,
                ),
              ),
              child: Center(
                child: CustomText(
                  title: "Decline ",
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}

class SelectApproveFileTile extends StatelessWidget {
  const SelectApproveFileTile({
    this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: kGreyLightColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        minLeadingWidth: -4,
        leading: Image.asset(
          "assets/Folder.png",
          height: 22,
        ),
        title: CustomText(
          title: title,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kBlackLightColor,
        ),
      ),
    );
  }
}
