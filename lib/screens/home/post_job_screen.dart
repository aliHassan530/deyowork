import 'package:dyou/screens/home/post_a_job.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostJobScreen extends StatefulWidget {
  const PostJobScreen({Key? key}) : super(key: key);

  @override
  State<PostJobScreen> createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Manage Jobs",
              fontSize: 21,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 67.h,
            ),
            Image.asset(
              "assets/Group 33588.png",
              height: 220.h,
            ),
            SizedBox(
              height: 90.h,
            ),
            CustomText(
              title: "No Jobs Yet",
              fontSize: 21,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText(
              title:
                  "You Did Not Creat Any Job Or Hire Anyone Yet You Can Create Or Hire Someone For Your Work",
              fontSize: 13,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              color: kGreyColor,
            ),
            SizedBox(
              height: 40.h,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: kPurPleColor,
                  ))),
                  child: CustomText(
                    title: "Explore Categories",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kPurPleColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    Helper.toScreen(context, PostAJob());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: kPurPleColor,
                    ))),
                    child: CustomText(
                      title: "post job",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: kPurPleColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
