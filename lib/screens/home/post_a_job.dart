import 'package:dyou/utilites/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class PostAJob extends StatefulWidget {
  const PostAJob({Key? key}) : super(key: key);

  @override
  State<PostAJob> createState() => _PostAJobState();
}

class _PostAJobState extends State<PostAJob> {
  bool jobTypeTick = true;
  bool laborJob = true;
  String? selectCategories;
  List _selectionCategories = [
    "Plumber",
    "Electrician",
    "Carpet fitter",
    "Carpenter",
  ];

  String? selectPay;
  List _selectionPay = [
    "Project wise",
    "Mile Stone wise",
  ];

  DateTime dateTime = DateTime(2022, 10, 1, 10, 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        elevation: 2,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              "assets/Arrow - Up.png",
              height: 24.h,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarText(
          title: "Post a job",
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "assets/Close Square.png",
                    height: 20,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(children: [
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "Job type",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    jobTypeTick = true;
                  });
                },
                child: Row(
                  children: [
                    CustomText(
                      title: "Not urgent",
                      fontSize: 14,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/Tick Square.png",
                      height: 15,
                      color: jobTypeTick ? kGreenColor : kGreyColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    jobTypeTick = false;
                  });
                },
                child: Row(
                  children: [
                    CustomText(
                      title: "Urgent",
                      fontSize: 14,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/Tick Square.png",
                      height: 15,
                      color: jobTypeTick ? kGreyColor : kGreenColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomText(
            title: "Need an expert plumber",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(
            textFontSize: 14,
            hintText: "Please enter your tax id",
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
            hintFontSize: 13,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "Add Description",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(
            maxLines: 3,
            textFontSize: 14,
            hintText:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,   quis nostrud exercitation ullamco laboris nisi ",
            hintFontSize: 13,
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
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "Labour for this job",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    laborJob = true;
                  });
                },
                child: Row(
                  children: [
                    CustomText(
                      title: "Individual worker",
                      fontSize: 14,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/Tick Square.png",
                      height: 15,
                      color: laborJob ? kGreenColor : kGreyColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    laborJob = false;
                  });
                },
                child: Row(
                  children: [
                    CustomText(
                      title: "Multiple workers",
                      fontSize: 14,
                      color: kGreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/Tick Square.png",
                      height: 15,
                      color: laborJob ? kGreyColor : kGreenColor,
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: 40.h,
          ),
          CustomText(
            title: "Select Your Category",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackLightColor,
          ),

          SizedBox(
            height: 15.h,
          ),
          // selectcountry
          Container(
            height: 48,
            decoration: BoxDecoration(
                color: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kGreyLightColor,
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButton(
              elevation: 0,
              itemHeight: 65,
              underline: Container(
                height: 1.0,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.transparent, width: 0.0))),
              ),
              hint: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Electrician",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kGreyColor
                            : kBlackLightColor),
                  )),
              dropdownColor: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              icon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/Arrow 2.png",
                    height: 10,
                  )),
              isExpanded: true,
              value: selectCategories,
              onChanged: (newvalue) {
                setState(() {
                  selectCategories = newvalue as String?;
                });
              },
              items: _selectionCategories.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        valueItem,
                        style: TextStyle(
                            fontSize: 14,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kGreyColor
                                : kBlackLightColor),
                      )),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "How would you like to pay",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackLightColor,
          ),

          SizedBox(
            height: 15.h,
          ),
          // projectWise
          Container(
            height: 48,
            decoration: BoxDecoration(
                color: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kGreyLightColor,
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButton(
              elevation: 0,
              itemHeight: 65,
              underline: Container(
                height: 1.0,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.transparent, width: 0.0))),
              ),
              hint: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Project wise",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kGreyColor
                          : kBlackLightColor),
                ),
              ),
              dropdownColor: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              icon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/Arrow 2.png",
                    height: 10,
                  )),
              isExpanded: true,
              value: selectPay,
              onChanged: (newvalue) {
                setState(
                  () {
                    selectPay = newvalue as String?;
                  },
                );
              },
              items: _selectionPay.map(
                (valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          valueItem,
                          style: TextStyle(
                              fontSize: 14,
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kGreyColor
                                  : kBlackLightColor),
                        )),
                  );
                },
              ).toList(),
            ),
          ),

          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "Budget",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(
            textFontSize: 14,
            hintText: "€30",
            hintFontSize: 13,
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
          ),

          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "Provide your Address",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextField(
            prefixIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Location.png",
                  height: 20,
                ),
              ],
            ),
            textFontSize: 14,
            hintText: "xyz, 45st, florida",
            hintFontSize: 13,
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
          ),

          // SizedBox(
          //   height: 20.h,
          // ),
          // CustomText(
          //   title: "Preffered Date",
          //   color: ThemeService().theme == ThemeMode.dark
          //       ? kMainColor
          //       : kBlackColor,
          //   fontWeight: FontWeight.w500,
          //   fontSize: 15,
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // Container(
          //   height: 200,
          //   color: kDarkBlackLightColor,
          //   child: CupertinoTheme(
          //     data: CupertinoThemeData(
          //       barBackgroundColor: Colors.red,
          //       primaryColor: kSecondaryColor,
          //       textTheme: CupertinoTextThemeData(
          //         dateTimePickerTextStyle: TextStyle(color: kSecondaryColor),
          //       ),
          //     ),
          //     child: CupertinoDatePicker(
          //         use24hFormat: false,
          //         backgroundColor: kGreyLightColor,
          //         initialDateTime: dateTime,
          //         mode: CupertinoDatePickerMode.date,
          //         onDateTimeChanged: (dateTime) {
          //           setState(() {
          //             this.dateTime = dateTime;
          //           });
          //         }),
          //   ),
          // ),

          SizedBox(
            height: 20.h,
          ),
          CustomText(
            title: "Provide your Address",
            color: ThemeService().theme == ThemeMode.dark
                ? kMainColor
                : kBlackColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 200,
            color: ThemeService().theme == ThemeMode.dark
                ? kGreyLightColor
                : kBlackLightColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "DD",
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackLightColor,
                        fontSize: 17,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: CustomText(
                          title: "MM",
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackLightColor,
                          fontSize: 17,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CustomText(
                          title: "YYYY",
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackLightColor,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: CupertinoTheme(
                    data: CupertinoThemeData(
                      brightness: Brightness.light,
                      barBackgroundColor: kSecondaryColor,
                      textTheme: CupertinoTextThemeData(
                        dateTimePickerTextStyle: TextStyle(
                          color: kMainColor,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    child: CupertinoDatePicker(
                      dateOrder: DatePickerDateOrder.dmy,
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() {
                          dateTime = newTime;
                        });
                      },
                      backgroundColor: ThemeService().theme == ThemeMode.dark
                          ? kDarkBlackLightColor
                          : kMainColor,
                      initialDateTime: dateTime,
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.date,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
