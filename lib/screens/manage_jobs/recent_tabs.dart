import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dyou/screens/manage_jobs/ongoing_tab.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:flutter/material.dart';

import '../../theme_service/theme_service.dart';

class RecentTabs extends StatefulWidget {
  const RecentTabs({Key? key}) : super(key: key);

  @override
  State<RecentTabs> createState() => _RecentTabsState();
}

class _RecentTabsState extends State<RecentTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                // color: KYellowColor,
              ),
              child: ButtonsTabBar(
                backgroundColor: ThemeService().theme == ThemeMode.dark
                    ? kGreyLightColor
                    : kLightColorGreyText.withOpacity(0.5),
                unselectedBackgroundColor:
                    ThemeService().theme == ThemeMode.dark
                        ? kBlackColor
                        : kMainColor,
                labelStyle: TextStyle(
                  color: ThemeService().theme == ThemeMode.dark
                      ? kBlackColor
                      : kBlackColor,
                ),
                unselectedLabelStyle: TextStyle(
                  color: ThemeService().theme == ThemeMode.dark
                      ? kGreyLightColor
                      : kBlackColor,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                borderWidth: 1,
                borderColor: kGreyLightColor,
                unselectedBorderColor: ThemeService().theme == ThemeMode.dark
                    ? kMainColor
                    : kGreyLightColor,
                radius: 100,
                tabs: [
                  Tab(
                    text: "Pending",
                  ),
                  Tab(
                    text: "on going",
                  ),
                  Tab(
                    text: "Cancelled",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    OngoingTab(),
                    OngoingTab(),
                    OngoingTab(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
