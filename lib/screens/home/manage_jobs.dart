import 'package:dyou/screens/home/post_a_job.dart';
import 'package:dyou/screens/manage_jobs/invitation_tab.dart';
import 'package:dyou/screens/manage_jobs/recent_tabs.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_text.dart';

class ManageJobs extends StatefulWidget {
  const ManageJobs({Key? key}) : super(key: key);

  @override
  State<ManageJobs> createState() => _ManageJobsState();
}

class _ManageJobsState extends State<ManageJobs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor:
              ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
          centerTitle: true,
          title: AppbarText(
            title: "Manage Jobs",
          ),
          bottom: PreferredSize(
            preferredSize: Size(0, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: ThemeService().theme == ThemeMode.dark
                          ? kBlackColor
                          : kMainColor,
                      borderRadius: BorderRadius.circular(10)),
                  height: 47,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: TabBar(
                          physics: ClampingScrollPhysics(),
                          unselectedLabelColor:
                              ThemeService().theme == ThemeMode.dark
                                  ? kMainColor
                                  : kBlackColorText,
                          labelPadding: EdgeInsets.zero,
                          indicatorWeight: 2,
                          labelColor: ThemeService().theme == ThemeMode.dark
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
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Tab(
                                text: "Recent jobs",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Tab(
                                text: "Past jobs",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Tab(
                                text: "Invitations",
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Helper.toScreen(context, PostAJob());
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
                                title: "create job",
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
              ],
            ),
          ),
        ),
        body: Container(
          child: TabBarView(
            children: [
              RecentTabs(),
              RecentTabs(),
              InvitationTab(),
            ],
          ),
        ),
      ),
    );
  }
}
