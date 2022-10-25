import 'package:dyou/model/categories_home_model.dart';
import 'package:dyou/model/current_jobs_detail_model.dart';
import 'package:dyou/screens/home/custom_search.dart';
import 'package:dyou/screens/home/post_a_job.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:dyou/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../widget/categories_home_widget.dart';
import '../../widget/current_jobs_home_widget.dart';
import '../../widget/favourite_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Image.asset(
                  "assets/image 3 (2).png",
                  height: 33,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.73,
                      child: CustomTextField(
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Vector (Stroke).png",
                              height: 12.78,
                            ),
                          ],
                        ),
                        contentPaddingTop: 10,
                        fillColor: ThemeService().theme == ThemeMode.dark
                            ? kDarkBlackLightColor
                            : kLightColorGreyText.withOpacity(0.2),
                        textFontSize: 14,
                        cursorColor: kBlackColor,
                        hintFontSize: 14,
                        textColor: kGreyColor,
                        hintTextColor: kGreyColor,
                        hintText: "search",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Helper.toScreen(context, CustomSearch());
                      },
                      child: Image.asset(
                        "assets/Group 33365.png",
                        height: 42,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 43.h,
          // ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: ThemeService().theme == ThemeMode.dark
                              ? LinearGradient(colors: [
                                  Color(0xff70DBC6),
                                  Color(0xFF484C4D).withOpacity(0.99),
                                ], begin: Alignment.topCenter)
                              : LinearGradient(colors: [
                                  Color(0xff70DBC6),
                                  Color(0xff70DBC6).withOpacity(0.5),
                                ], begin: Alignment.topCenter),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomText(
                              title: "Don’t want to search for anyone?",
                              fontSize: 13,
                              color: kBlackLightColor,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  title: "Post a job",
                                  fontSize: 15,
                                  color: kBlackLightColor,
                                  fontWeight: FontWeight.w600,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: kMainColor,
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Helper.toScreen(context, PostAJob());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          child: Row(
                                            children: [
                                              CustomText(
                                                title: "And Get Offers",
                                                fontSize: 13,
                                                color: kBlackLightColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: kSecondaryColor,
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: kMainColor,
                                          size: 26,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   height: 127,
                      //     width: MediaQuery.of(context).size.width*0.99,
                      //     child: Image.asset(
                      //   "assets/explore_frame-removebg-preview.png",
                      //   height: 127,
                      //       fit: BoxFit.fitWidth,
                      // ),),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/remove-removebg-preview.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    title: "Explore our",
                                    fontSize: 18,
                                    color: kMainColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: kSecondaryColor,
                                    ),
                                    child: CustomText(
                                      title: "services",
                                      fontSize: 18,
                                      color: kMainColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              CustomText(
                                title: "Select The Best One!",
                                fontSize: 16,
                                color: kMainColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Current Jobs",
                        fontSize: 16,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackColorText,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: kPurPleColor,
                            ),
                          ),
                        ),
                        child: CustomText(
                          title: "See All",
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 174,
                  child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: currentList.length,
                      itemBuilder: (context, index) {
                        return CurrentJobHomeWidget(
                          currentJobs: currentJobsData[index],
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Categories",
                        fontSize: 16,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kPurPleColor
                            : kBlackColorText,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: kPurPleColor,
                        ))),
                        child: CustomText(
                          title: "See All",
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesList.length,
                      itemBuilder: (context, index) {
                        return CategoriesHomeWidget(
                          categories: categoriesData[index],
                        );
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "My Favorites",
                        fontSize: 16,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackColorText,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: kPurPleColor,
                        ))),
                        child: CustomText(
                          title: "See All",
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 174,
                  child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: currentList.length,
                      itemBuilder: (context, index) {
                        return FavouriteHomeWidget(
                          currentJobs: currentJobsData[index],
                        );
                      }),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
