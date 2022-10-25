import 'package:dyou/screens/billing_screen/billing_screen.dart';
import 'package:dyou/screens/bottom_bar/bottom_bar.dart';
import 'package:dyou/screens/profile/about_screen.dart';
import 'package:dyou/screens/profile/edit_profile.dart';
import 'package:dyou/screens/profile/faq.dart';
import 'package:dyou/screens/profile/favourite.dart';
import 'package:dyou/screens/profile/impressum.dart';
import 'package:dyou/screens/profile/language.dart';
import 'package:dyou/screens/profile/notification_screen.dart';
import 'package:dyou/screens/profile/payment_method.dart';
import 'package:dyou/screens/profile/support.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  ThemeService t = ThemeService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: ThemeService().theme == ThemeMode.dark
                  ? kBlackColor
                  : kMainColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: kPurPleColor)),
                      height: 42,
                      width: 42,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset("assets/Ellipse 28.png"),
                      ),
                    ),
                    title: CustomText(
                      title: "Ali khan",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                    subtitle: Row(
                      children: [
                        Image.asset(
                          "assets/LocationTow.png",
                          height: 10,
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        CustomText(
                          title: "Florida",
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        Helper.toScreen(context, NotificationScreen());
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              "assets/Notification.png",
                              height: 25.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: kLightColorGreyText,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: CustomText(
                      title: "Personal",
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, Language());
                    },
                    child: ProfileWidget(
                      icon: const Icon(
                        Icons.language,
                        color: kSecondaryColor,
                        size: 22,
                      ),
                      title: "Languages",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, FavouriteScreen());
                    },
                    child: ProfileWidget(
                      icon: Container(
                        margin: const EdgeInsets.only(top: 3),
                        child: Image.asset(
                          "assets/Heart1.png",
                          height: 20,
                        ),
                      ),
                      title: "Favorites",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  ProfileWidget(
                    icon: Image.asset(
                      "assets/Work.png",
                      height: 20,
                    ),
                    title: "My Jobs",
                    iconTrailing: Image.asset(
                      "assets/Arrow - Up Circle.png",
                      height: 24,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, Billing());
                    },
                    child: ProfileWidget(
                      icon: Image.asset(
                        "assets/Edit Square.png",
                        height: 20,
                      ),
                      title: "Billing",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(
                        context,
                        BottomBar(
                          index: 1,
                        ),
                      );
                    },
                    child: ProfileWidget(
                      icon: Image.asset(
                        "assets/Category.png",
                        height: 20,
                      ),
                      title: "Manage jobs",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: CustomText(
                      title: "General",
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, EditProfile());
                    },
                    child: ProfileWidget(
                      icon: Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Image.asset(
                          "assets/Vector (8).png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      title: "Edit profile",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Helper.toScreen(context, PaymentMethod());
                    },
                    child: ProfileWidget(
                      icon: Container(
                        margin: EdgeInsets.only(top: 3),
                        child: Image.asset(
                          "assets/Vector (9).png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      title: "Payments",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 20,
                      ),
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Helper.toScreen(context, Setting());
                  //   },
                  //   child: ProfileWidget(
                  //     icon: Container(
                  //       margin: EdgeInsets.only(top: 3),
                  //       child: Image.asset(
                  //         "assets/Setting.png",
                  //         height: 20,
                  //         width: 20,
                  //       ),
                  //     ),
                  //     title: "Setting",
                  //     iconTrailing: Image.asset(
                  //       "assets/Arrow - Up Circle.png",
                  //       height: 20,
                  //     ),
                  //   ),
                  // ),
                  ProfileWidget(
                    icon: Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Image.asset(
                        "assets/Group 33511.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    title: "Light/Dark Mode",
                    iconTrailing: Container(
                      height: 23,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: t.switchbutton ? kMainColor : kSecondaryColor,
                      ),
                      child: Switch(
                        value: t.switchbutton,
                        onChanged: (value) {
                          setState(() {
                            t.switchTheme();
                          });
                        },
                        inactiveTrackColor: kSecondaryColor,
                        activeTrackColor: kMainColor,
                        activeColor: kBlackLightColor,
                        inactiveThumbColor: kMainColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: CustomText(
                      title: "Dyou",
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, SupportScreen());
                    },
                    child: ProfileWidget(
                      title: "Support",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, FaqScreen());
                    },
                    child: ProfileWidget(
                      title: "FAQs",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, AboutScreen());
                    },
                    child: ProfileWidget(
                      title: "About us",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Helper.toScreen(context, ImpressumScreen());
                    },
                    child: ProfileWidget(
                      title: "Imprint",
                      iconTrailing: Image.asset(
                        "assets/Arrow - Up Circle.png",
                        height: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: CustomButton(
                      onPressed: () {},
                      elevation: 3,
                      btnColor: kSecondaryColor,
                      title: "Logout",
                      fontSize: 14,
                      btnRadius: 8,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

