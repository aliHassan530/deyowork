import 'package:dyou/model/invitation_model.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_button.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../theme_service/theme_service.dart';
import '../screens/manage_jobs/ongoing_jobs_detail_Screen.dart';

class InvitationWidget extends StatelessWidget {
  final InvitationModel? ongoing;

  InvitationWidget({
    Key? key,
    this.ongoing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Card(
            margin: EdgeInsets.only(bottom: 1),
            color: ThemeService().theme == ThemeMode.dark
                ? kDarkBlackLightColor
                : kMainColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            ongoing?.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: CustomText(
                      title: ongoing?.title,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      maxLines: 1,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: ongoing!.subtitle,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kGreyColor
                            : kBlackColorText,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomText(
                        title: ongoing!.titlecategory,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        maxLines: 1,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackColorText,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        child: ReadMoreText(
                          ongoing?.detail,
                          trimLines: 4,
                          style: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          lessStyle: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                          moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Fix Budget",
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kMainColor
                                            : kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  CustomText(
                                    title: ongoing!.budget,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kLightColorGreyText
                                            : kBlackColor.withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Invited",
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kMainColor
                                            : kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  CustomText(
                                    title: ongoing!.invited,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kLightColorGreyText
                                            : kBlackColor.withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //   child: CustomText(
                //     title: ongoing?.detail,
                //     fontSize: 14,
                //     color: kBlackColor,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                    onPressed: () {
                      Helper.toScreen(context, OnGoingJobsDetailScreen());
                    },
                    textColor: kBlackColorText,
                    title: "Check Detail",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
