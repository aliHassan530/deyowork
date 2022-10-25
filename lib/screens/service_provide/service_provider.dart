import 'package:dyou/model/service_provider_model.dart';
import 'package:dyou/screens/home/booking_screen.dart';
import 'package:dyou/screens/message/chat_screen.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../model/review_service_provider_model.dart';
import '../../theme_service/theme_service.dart';
import '../../widget/custom_button.dart';

class ServiceProvider extends StatefulWidget {
  const ServiceProvider({Key? key}) : super(key: key);

  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 0,
              leading: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Image.asset(
                      "assets/Arrow 5.png",
                      height: 25,
                      color: kGreyColor,
                    ),
                  ),
                ),
              ),
              backgroundColor: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kMainColor,
              automaticallyImplyLeading: false,
              pinned: true,
              expandedHeight: 270.0,
              collapsedHeight: 60,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/Rectangle 54.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              bottom: PreferredSize(
                preferredSize: Size(0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      height: 10,
                    ),
                    Positioned(
                      top: -15,
                      child: Container(
                        height: 58,
                        child: ListView(
                          padding: EdgeInsets.only(left: 10),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          children: [
                            ExperienceWidget(
                              img: "assets/Time Circle.png",
                              title: "8 years",
                              subtitle: "work experience",
                            ),
                            ExperienceWidget(
                              img: "assets/Star.png",
                              title: "15+",
                              subtitle: "user reviews",
                            ),
                            ExperienceWidget(
                              img: "assets/Tick e.png",
                              title: "25+",
                              subtitle: "completed works",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: ListView(
          children: [
            // Stack(
            //     clipBehavior: Clip.none,
            //     children: [
            //       Container(),
            //       Positioned(
            //         top: -20,
            //         child: Container(
            //           height: 55,
            //           child: ListView(
            //             padding: EdgeInsets.only(left: 10),
            //             scrollDirection: Axis.horizontal,
            //             shrinkWrap: true,
            //             physics: ClampingScrollPhysics(),
            //             children: [
            //               ExperienceWidget(
            //                 img: "assets/Time Circle.png",
            //                 title: "8 years",
            //                 subtitle: "work experience",
            //               ),
            //               ExperienceWidget(
            //                 img: "assets/Star.png",
            //                 title: "15+",
            //                 subtitle: "user reviews",
            //               ),
            //               ExperienceWidget(
            //                 img: "assets/Tick e.png",
            //                 title: "25+",
            //                 subtitle: "completed works",
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Adam Zampa",
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackLightColor,
                      ),
                      Container(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "\$15 ",
                                style: TextStyle(
                                  color: kPurPleColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: "/hour",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: kGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/LocationTow.png",
                        height: 10,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      CustomText(
                        title: "Florida, 5km away",
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 4.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        unratedColor: kPurPleColor,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      CustomText(
                        title: "4.5",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kBlackLightColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  CustomText(
                    title: "Bio",
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackLightColor,
                  ),
                  SizedBox(height: 10.h),
                  ReadMoreText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
                    trimLines: 4,
                    style: TextStyle(
                      color: ThemeService().theme == ThemeMode.dark
                          ? kGreyColor
                          : kBlackLightColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  CustomText(
                    title: "Recent Work",
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackLightColor,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: serviceProvideList.length,
                  itemBuilder: (context, index) {
                    return RecentJobs(
                      categories: serviceProvideData[index],
                    );
                  }),
            ),
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  CustomText(
                    title: "Reviews    ",
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackColorText,
                  ),
                  CustomText(
                    title: "(15+)",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: kGreyColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 190,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: reviewList.length,
                  itemBuilder: (context, index) {
                    return ReviewWidget(
                      review: reviewData[index],
                    );
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.73,
                    child: CustomButton(
                      onPressed: () {
                        Helper.toScreen(context, BookingScreen());
                      },
                      elevation: 3,
                      title: "Check availability ",
                      fontSize: 15,
                      textColor: kBlackColorText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, ChatScreen());
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: kWhiteLightColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                          child: Image.asset(
                        "assets/Chat.png",
                        height: 29,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),

      // Container(
      //   child: ListView(
      //     children: [
      //       Stack(
      //         children: [
      //           Container(
      //             height: 300,
      //             width: double.infinity,
      //             child: Image.asset(
      //               "assets/Rectangle 54.png",
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.only(left: 15, top: 15),
      //             child: GestureDetector(
      //               onTap: () {
      //                 Navigator.pop(context);
      //               },
      //               child: Image.asset(
      //                 "assets/Arrow 5.png",
      //                 height: 25,
      //                 color: kGreyColor,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Stack(
      //         clipBehavior: Clip.none,
      //         children: [
      //           Container(),
      //           Positioned(
      //             top: -20,
      //             child: Container(
      //               height: 55,
      //               child: ListView(
      //                 padding: EdgeInsets.only(left: 10),
      //                 scrollDirection: Axis.horizontal,
      //                 shrinkWrap: true,
      //                 physics: ClampingScrollPhysics(),
      //                 children: [
      //                   ExperienceWidget(
      //                     img: "assets/Time Circle.png",
      //                     title: "8 years",
      //                     subtitle: "work experience",
      //                   ),
      //                   ExperienceWidget(
      //                     img: "assets/Star.png",
      //                     title: "15+",
      //                     subtitle: "user reviews",
      //                   ),
      //                   ExperienceWidget(
      //                     img: "assets/Tick e.png",
      //                     title: "25+",
      //                     subtitle: "completed works",
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(
      //         height: 45,
      //       ),
      //       Container(
      //         margin: EdgeInsets.symmetric(
      //           horizontal: 15,
      //         ),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 CustomText(
      //                   title: "Adam Zampa",
      //                   fontSize: 19,
      //                   fontWeight: FontWeight.w500,
      //                   color: kBlackLightColor,
      //                 ),
      //                 Container(
      //                   child: RichText(
      //                     text: const TextSpan(
      //                       children: [
      //                         TextSpan(
      //                           text: "\$15 ",
      //                           style: TextStyle(
      //                             color: kPurPleColor,
      //                             fontSize: 14,
      //                             fontWeight: FontWeight.w600,
      //                           ),
      //                         ),
      //                         TextSpan(
      //                           text: "/hour",
      //                           style: TextStyle(
      //                             fontSize: 14,
      //                             color: kGreyColor,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(
      //               height: 5.h,
      //             ),
      //             Row(
      //               children: [
      //                 Image.asset(
      //                   "assets/LocationTow.png",
      //                   height: 10,
      //                 ),
      //                 SizedBox(
      //                   width: 5.h,
      //                 ),
      //                 CustomText(
      //                   title: "Florida, 5km away",
      //                   fontSize: 11,
      //                   fontWeight: FontWeight.w500,
      //                   color: kGreyColor,
      //                 ),
      //               ],
      //             ),
      //             SizedBox(height: 10.h),
      //             Row(
      //               children: [
      //                 RatingBar.builder(
      //                   initialRating: 0,
      //                   minRating: 4.5,
      //                   direction: Axis.horizontal,
      //                   allowHalfRating: true,
      //                   itemCount: 5,
      //                   itemSize: 15,
      //                   unratedColor: kPurPleColor,
      //                   // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      //                   itemBuilder: (context, _) => Icon(
      //                     Icons.star,
      //                     color: Colors.amber,
      //                   ),
      //                   onRatingUpdate: (rating) {
      //                     print(rating);
      //                   },
      //                 ),
      //                 CustomText(
      //                   title: "4.5",
      //                   fontSize: 17,
      //                   fontWeight: FontWeight.w500,
      //                   color: kBlackLightColor,
      //                 ),
      //               ],
      //             ),
      //             SizedBox(height: 10.h),
      //             CustomText(
      //               title: "Bio",
      //               fontSize: 19,
      //               fontWeight: FontWeight.w500,
      //               color: kBlackLightColor,
      //             ),
      //             SizedBox(height: 10.h),
      //             ReadMoreText(
      //               "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ",
      //               trimLines: 4,
      //               style: TextStyle(
      //                 color: kBlackLightColor,
      //                 fontWeight: FontWeight.w400,
      //                 fontSize: 12,
      //               ),
      //               colorClickableText: Colors.pink,
      //               trimMode: TrimMode.Line,
      //               trimCollapsedText: 'Show more',
      //               trimExpandedText: 'Show less',
      //               moreStyle:
      //                   TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(height: 10.h),
      //             CustomText(
      //               title: "Recent Work",
      //               fontSize: 19,
      //               fontWeight: FontWeight.w500,
      //               color: kBlackLightColor,
      //             ),
      //             SizedBox(height: 10.h),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         height: 150,
      //         child: ListView.builder(
      //             physics: ClampingScrollPhysics(),
      //             shrinkWrap: true,
      //             padding: EdgeInsets.only(left: 15),
      //             scrollDirection: Axis.horizontal,
      //             itemCount: serviceProvideList.length,
      //             itemBuilder: (context, index) {
      //               return RecentJobs(
      //                 categories: serviceProvideData[index],
      //               );
      //             }),
      //       ),
      //       SizedBox(height: 10.h),
      //       Container(
      //         margin: EdgeInsets.symmetric(horizontal: 15),
      //         child: Row(
      //           children: [
      //             CustomText(
      //               title: "Reviews    ",
      //               fontSize: 19,
      //               fontWeight: FontWeight.w500,
      //               color: kBlackLightColor,
      //             ),
      //             CustomText(
      //               title: "(15+)",
      //               fontSize: 12,
      //               fontWeight: FontWeight.w500,
      //               color: kGreyColor,
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 10.h),
      //       Container(
      //         height: 180,
      //         child: ListView.builder(
      //             physics: ClampingScrollPhysics(),
      //             shrinkWrap: true,
      //             padding: EdgeInsets.only(left: 15),
      //             scrollDirection: Axis.horizontal,
      //             itemCount: reviewList.length,
      //             itemBuilder: (context, index) {
      //               return ReviewWidget(
      //                 review: reviewData[index],
      //               );
      //             }),
      //       ),
      //       SizedBox(
      //         height: 40,
      //       ),
      //       Container(
      //         margin: EdgeInsets.symmetric(horizontal: 15),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Container(
      //               width: MediaQuery.of(context).size.width * 0.73,
      //               child: CustomButton(
      //                 onPressed: () {},
      //                 elevation: 3,
      //                 title: "Check availability ",
      //                 fontSize: 15,
      //                 textColor: kBlackColorText,
      //                 fontWeight: FontWeight.w500,
      //               ),
      //             ),
      //             InkWell(
      //               onTap: (){
      //                 Helper.toScreen(context, ChatScreen());
      //               },
      //               child: Container(
      //                 height: 50,
      //                 width: 50,
      //                 decoration: BoxDecoration(
      //                   color: kWhiteLightColor,
      //                   borderRadius: BorderRadius.circular(100),
      //                 ),
      //                 child: Center(
      //                     child: Image.asset(
      //                   "assets/Chat.png",
      //                   height: 29,
      //                 )),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 80.h,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    this.img,
    this.title,
    this.subtitle,
  });

  final img;
  final title;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10),
      color: ThemeService().theme == ThemeMode.dark
          ? kDarkBlackLightColor
          : kMainColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              img,
              color: ThemeService().theme == ThemeMode.dark
                  ? kSecondaryColor
                  : kPurPleColor,
              // "assets/Time Circle.png",
              height: 20,
            ),
            SizedBox(
              width: 2,
            ),
            Column(
              children: [
                CustomText(
                  title: title,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kMainColor
                      : kBlackColorText,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                CustomText(
                  title: subtitle,
                  fontWeight: FontWeight.w600,
                  fontSize: 9.04,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kGreyColor
                      : kBlackLightColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecentJobs extends StatelessWidget {
  final ServiceProvideModel? categories;

  RecentJobs({
    Key? key,
    this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Helper.toScreen(context, ServiceList());
      // },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 146,
              width: 116,
              child: Image.asset(
                categories!.img,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final ReviewServiceProviderModel? review;

  ReviewWidget({
    Key? key,
    this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      margin: EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: ThemeService().theme == ThemeMode.dark
            ? kDarkBlackLightColor
            : kMainColor.withOpacity(0.9),
        margin: EdgeInsets.only(bottom: 1),
        // color: kMainColor.withOpacity(0.9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
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
                          review?.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: CustomText(
                    title: review?.title,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    maxLines: 1,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackColorText,
                  ),
                ),
                subtitle: RatingBar.builder(
                  initialRating: 0,
                  minRating: review!.rating,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 15,
                  unratedColor: ThemeService().theme == ThemeMode.dark
                      ? kSecondaryColor
                      : kPurPleColor,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                trailing: CustomText(
                  title: review!.trailing,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: ThemeService().theme == ThemeMode.dark
                      ? kGreyColor
                      : kBlackColorText.withOpacity(0.7),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: ReadMoreText(
                  review?.detail,
                  trimLines: 4,
                  style: TextStyle(
                      color: ThemeService().theme == ThemeMode.dark
                          ? kGreyColor
                          : kBlackColorText,
                      fontSize: 12),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
