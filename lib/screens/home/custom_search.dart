import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  SfRangeValues _values = SfRangeValues(00.0, 50.0);
  SfRangeValues timeset = SfRangeValues(00.0, 50.0);

  String? selectCatergory;
  List _selection = ["Electrician", "Plumber"];

  String? selecttimeset;
  List _selectionCity = [
    "Per Hour",
    "Per day",
    "Per Week",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        elevation: 2,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
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
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomText(
                          title: "Select Your Category",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackLightColor,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
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
                                      bottom: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0))),
                            ),
                            hint: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Electrician",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: kLightColorGreyText),
                                )),
                            dropdownColor:
                                ThemeService().theme == ThemeMode.dark
                                    ? kDarkBlackLightColor
                                    : kGreyLightColor,
                            icon: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/Arrow 2.png",
                                  height: 10,
                                )),
                            isExpanded: true,
                            value: selectCatergory,
                            onChanged: (newvalue) {
                              setState(() {
                                selectCatergory = newvalue as String?;
                              });
                            },
                            items: _selection.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      valueItem,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: kLightColorGreyText),
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
                          height: 10.h,
                        ),
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
                                      bottom: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0))),
                            ),
                            hint: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Per Hour",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: kLightColorGreyText),
                                )),
                            dropdownColor:
                                ThemeService().theme == ThemeMode.dark
                                    ? kDarkBlackLightColor
                                    : kGreyLightColor,
                            icon: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  "assets/Arrow 2.png",
                                  height: 10,
                                )),
                            isExpanded: true,
                            value: selecttimeset,
                            onChanged: (newvalue) {
                              setState(() {
                                selecttimeset = newvalue as String?;
                              });
                            },
                            items: _selectionCity.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      valueItem,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: kLightColorGreyText),
                                    )),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomText(
                          title: "Price/Hour",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackLightColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    child: SfRangeSlider(
                      startThumbIcon: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: kSecondaryColor)),
                      ),
                      endThumbIcon: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: kSecondaryColor)),
                      ),
                      activeColor: kSecondaryColor,
                      inactiveColor: kGreyLightColor,
                      min: 0.0,
                      max: 100.0,
                      values: timeset,
                      showTicks: false,
                      showLabels: false,
                      enableTooltip: true,
                      minorTicksPerInterval: 1,
                      onChanged: (SfRangeValues values) {
                        setState(() {
                          timeset = values;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          title: "Min",
                          color: kBlackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                        CustomText(
                          title: "Max",
                          color: kBlackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomText(
                      title: "Distance",
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackLightColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    child: SfRangeSlider(
                      startThumbIcon: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: kSecondaryColor)),
                      ),
                      endThumbIcon: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: kSecondaryColor)),
                      ),
                      activeColor: kSecondaryColor,
                      inactiveColor: kGreyLightColor,
                      min: 0.0,
                      max: 100.0,
                      values: _values,
                      // interval: 40,
                      showTicks: false,
                      showLabels: false,
                      enableTooltip: true,
                      minorTicksPerInterval: 1,
                      onChanged: (SfRangeValues values) {
                        setState(() {
                          _values = values;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                      onPressed: () {
                        // Helper.toScreen(context, BottomBar());
                      },
                      elevation: 3,
                      btnColor: kSecondaryColor,
                      title: "Submit",
                      fontSize: 14,
                      btnRadius: 8,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
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
