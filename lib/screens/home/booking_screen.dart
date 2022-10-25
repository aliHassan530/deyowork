import 'package:dyou/widget/appBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      appBar: AppBar(
        backgroundColor:
            ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
        elevation: 0,
        leading: Center(
          child: Image.asset(
            "assets/Arrow 5.png",
            height: 20,
          ),
        ),
        centerTitle: true,
        title: AppbarText(
          title: "Availability",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.circular(15),
              ),
              height: MediaQuery.of(context).size.height * 0.4,
              child: SfDateRangePicker(
                backgroundColor: ThemeService().theme == ThemeMode.dark
                    ? kDarkBlackLightColor
                    : kMainColor,
                headerStyle: DateRangePickerHeaderStyle(
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                selectionMode: DateRangePickerSelectionMode.multiRange,
                selectionColor: kSecondaryColor,
                rangeSelectionColor: kSecondaryColor,
                startRangeSelectionColor: kSecondaryColor,
                endRangeSelectionColor: kSecondaryColor,
                onSelectionChanged: _onSelectionChange,
                rangeTextStyle: TextStyle(color: kMainColor),
                todayHighlightColor: kBlackColorText,
                selectionTextStyle: TextStyle(
                  color: kMainColor,
                ),
                monthViewSettings: DateRangePickerMonthViewSettings(
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                        textStyle: TextStyle(
                      color: kGreyColor.withOpacity(0.5),
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      fontFamily: 'Poppins-Medium',
                    )),
                    weekNumberStyle: DateRangePickerWeekNumberStyle(
                        backgroundColor: kSecondaryColor)),
                monthCellStyle: DateRangePickerMonthCellStyle(
                  todayTextStyle: TextStyle(
                    color: kSecondaryColor,
                    // decorationColor: KSecondaryColor,
                  ),
                  todayCellDecoration: BoxDecoration(
                      // border: Border.all(color: KSecondaryColor),
                      ),
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: kSecondaryColor,
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Available TIme slots",
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "From",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackColor,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextField(
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
                        hintText: "01:00 PM",
                        textFontSize: 18,
                        hintFontSize: 18,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "To",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackColor,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextField(
                        hintText: "05:00 PM",
                        textFontSize: 18,
                        hintFontSize: 18,
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
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Address",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomTextField(
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/locaiton2.png",
                    height: 20,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kLightColorGreyText,
                  ),
                ],
              ),
              textFontSize: 14,
              hintText: "please provide your address",
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
          ],
        ),
      ),
    );
  }

  void _onSelectionChange(
      DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
    print(dateRangePickerSelectionChangedArgs.value);
  }
}
