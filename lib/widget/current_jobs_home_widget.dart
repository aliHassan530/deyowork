import 'package:dyou/model/current_jobs_detail_model.dart';
import 'package:dyou/screens/service_provide/service_provider.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_button.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../theme_service/theme_service.dart';

class CurrentJobHomeWidget extends StatelessWidget {
  final CurrentJobsDetailModel? currentJobs;

  CurrentJobHomeWidget({
    Key? key,
    this.currentJobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      margin: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        margin: EdgeInsets.only(bottom: 1),
        color: ThemeService().theme == ThemeMode.dark
            ? kDarkBlackLightColor
            : kMainColor.withOpacity(0.9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 5),
              leading: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 46,
                    width: 46,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        currentJobs?.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              title: Container(
                margin: EdgeInsets.only(bottom: 5),
                child: CustomText(
                  title: currentJobs?.title,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  maxLines: 1,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kSecondaryColor
                      : kBlackColorText,
                ),
              ),
              subtitle: Column(
                children: [
                  CustomText(
                    title: currentJobs!.subtitle,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kSecondaryColor
                        : kBlackColorText,
                  ),
                ],
              ),
              trailing: Container(
                width: 110,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        title: "5",
                        fontSize: 15,
                        maxLines: 1,
                        color: kBlackColor,
                        fontWeight: FontWeight.w500,
                      ),
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        unratedColor: ThemeService().theme == ThemeMode.dark
                            ? kSecondaryColor
                            : kBlackColorText,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      CustomText(
                        title: currentJobs!.rating,
                        fontSize: 12,
                        maxLines: 1,
                        color: kBlackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ReadMoreText(
                currentJobs?.detail,
                trimLines: 4,
                style: TextStyle(
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColorText,
                ),
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  onPressed: () {
                    Helper.toScreen(context, ServiceProvider());
                  },
                  textColor: kBlackColorText,
                  title: "Job details",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
