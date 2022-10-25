import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
          title: "Review",
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
              title:
                  "Please provide us the review about the worker. So, we can improve our platform’s quality",
              color: kBlackColor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
              lineHeight: 1.4,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "It will be quick!",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomText(
              title: "Behaviour",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            SizedBox(
              height: 10.h,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 4.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              glow: false,
              unratedColor: kPurPleColor,
              glowColor: kMainColor,
              // unratedColor: kPurPleColor,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Work",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            SizedBox(
              height: 10.h,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 4.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              glow: false,
              unratedColor: kPurPleColor,
              glowColor: kMainColor,
              // unratedColor: kPurPleColor,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Timeliness",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            SizedBox(
              height: 10.h,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 4.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              glow: false,
              unratedColor: kPurPleColor,
              glowColor: kMainColor,
              // unratedColor: kPurPleColor,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Quality",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            SizedBox(
              height: 10.h,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 4.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              glow: false,
              unratedColor: kPurPleColor,
              glowColor: kMainColor,
              // unratedColor: kPurPleColor,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomText(
              title: "Explain your overall experience (optional)",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              fillColor: kGreyLightColor,
              hintText: "lorem ipsum",
              textFontSize: 13,
              maxLines: 5,
              cursorColor: kBlackColorText,
              textColor: kBlackColorText,
              hintTextColor: kBlackColorText,
              hintFontSize: 13,
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: () {},
                elevation: 3,
                btnColor: kSecondaryColor,
                title: "Review",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                btnRadius: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
