import 'package:dyou/screens/home/home_screen.dart';
import 'package:dyou/screens/home/manage_jobs.dart';
import 'package:dyou/screens/home/search_screen.dart';
import 'package:dyou/screens/message/message_screen.dart';
import 'package:dyou/screens/profile/profile.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:ff_navigation_bar_plus/ff_navigation_bar_plus.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({
    required this.index,
  });

  final index;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List iconList = [
    HomeScreen(),
    ManageJobs(),
    SearchScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  late int currentindex = widget.index as int;

  start() {
    setState(() {
      currentindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: iconList[currentindex], //destination screen
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            )),
        child: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barHeight: 55,
            selectedItemBorderColor: kSecondaryColor,
            showSelectedItemShadow: false,
            barBackgroundColor: kBlackColor,
            selectedItemBackgroundColor: kSecondaryColor,
            selectedItemIconColor: Colors.white,
          ),
          selectedIndex: currentindex,
          onSelectTab: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.home_filled,
              // label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.file_present,
              // label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.search,
              // label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.email_outlined,
              // label: '',
            ),
            FFNavigationBarItem(
              iconData: Icons.person_outline,
              // label: '',
            ),
          ],
        ),
      ),
    );

    Scaffold(
      extendBody: true,
      body: iconList[currentindex], //destination screen
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color: kBlackColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )),
            child: FFNavigationBar(
              theme: FFNavigationBarTheme(
                barHeight: 70,
                selectedItemBorderColor: kSecondaryColor,
                showSelectedItemShadow: false,
                barBackgroundColor: kBlackColor,
                selectedItemBackgroundColor: kSecondaryColor,
                selectedItemIconColor: Colors.white,
              ),
              selectedIndex: currentindex,
              onSelectTab: (index) {
                setState(() {
                  currentindex = index;
                });
              },
              items: [
                FFNavigationBarItem(
                  iconData: Icons.home_filled,
                  // label: '',
                ),
                FFNavigationBarItem(
                  iconData: Icons.file_present,
                  // label: '',
                ),
                FFNavigationBarItem(
                  iconData: Icons.search,
                  // label: '',
                ),
                FFNavigationBarItem(
                  iconData: Icons.email_outlined,
                  // label: '',
                ),
                FFNavigationBarItem(
                  iconData: Icons.person_outline,
                  // label: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
