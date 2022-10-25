import 'package:dyou/screens/message/active_jobs_tab.dart';
import 'package:dyou/widget/appBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        appBar: AppBar(
          backgroundColor:
              ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
          elevation: 0,
          centerTitle: true,
          title: AppbarText(
            title: "Messages",
          ),
          bottom: PreferredSize(
            preferredSize: Size(0, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 15),
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
                    textFontSize: 14,
                    hintFontSize: 14,
                    textColor: ThemeService().theme == ThemeMode.dark
                        ? kGreyColor
                        : kBlackColorText,
                    hintTextColor: ThemeService().theme == ThemeMode.dark
                        ? kGreyColor
                        : kBlackColorText,
                    fillColor: ThemeService().theme == ThemeMode.dark
                        ? kDarkBlackLightColor
                        : kGreyLightColor,
                    cursorColor: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackLightColor,
                    hintText: "search",
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: ThemeService().theme == ThemeMode.dark
                          ? kDarkBlackLightColor
                          : kMainColor,
                      borderRadius: BorderRadius.circular(10)),
                  height: 47,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.62,
                        child: TabBar(
                          physics: ClampingScrollPhysics(),
                          unselectedLabelColor: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackColorText,
                          labelPadding: EdgeInsets.zero,
                          indicatorWeight: 2,
                          labelColor:  ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackColorText,
                          isScrollable: true,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          labelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kMainColor
                                : kBlackColorText,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kMainColor
                                : kBlackColorText,
                          ),
                          indicatorColor: kBlackColor,
                          tabs: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Tab(
                                text: "Active Jobs",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Tab(
                                text: "Offers",
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Helper.toScreen(context, PostAJob());
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/Paper Plus.png",
                                height: 20,
                                color: ThemeService().theme == ThemeMode.dark
                                    ? kSecondaryColor
                                    : kBlackColorText,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              CustomText(
                                title: "create Group",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: ThemeService().theme == ThemeMode.dark
                                    ? kMainColor
                                    : kBlackColorText,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width * 0.8,
                //   decoration: BoxDecoration(
                //       color: kGreyLightColor,
                //       borderRadius: BorderRadius.circular(10)),
                //   height: 47,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         width: MediaQuery.of(context).size.width * 0.65,
                //         child: const TabBar(
                //           unselectedLabelColor: kMainColor,
                //           labelPadding: EdgeInsets.zero,
                //           indicatorWeight: 2,
                //           isScrollable: true,
                //           labelColor: kBlackColor,
                //           indicator: UnderlineTabIndicator(
                //             borderSide:
                //                 BorderSide(color: kPurPleColor, width: 2.0),
                //             // insets: EdgeInsets.fromLTRB(80.0, 00, 00.0, -13.0),
                //           ),
                //           // indicatorPadding: EdgeInsets.only(
                //           //     left: 15.0, right: 100.0, top: 20),
                //           // indicatorColor: kBlackColor,
                //           tabs: [
                //             Text(
                //               "Active Jobs",
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.w500,
                //                 color: kBlackLightColor,
                //               ),
                //               overflow: TextOverflow.ellipsis,
                //             ),
                //             Text(
                //               "Offers",
                //               style: TextStyle(
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.w500,
                //                 color: kBlackLightColor,
                //               ),
                //               overflow: TextOverflow.ellipsis,
                //             ),
                //           ],
                //         ),
                //       ),
                //       Container(
                //         margin: EdgeInsets.only(right: 10),
                //         child: Row(
                //           children: [
                //             Image.asset(
                //               "assets/Paper Plus.png",
                //               height: 20,
                //             ),
                //             SizedBox(
                //               width: 7,
                //             ),
                //             CustomText(
                //               title: "create Group",
                //               fontSize: 12,
                //               fontWeight: FontWeight.w500,
                //               color: kBlackLightColor,
                //             )
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              ActiveJobsTab(),
              ActiveJobsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
