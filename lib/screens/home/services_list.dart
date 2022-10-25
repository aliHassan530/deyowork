import 'package:dyou/model/services_list_model.dart';
import 'package:dyou/screens/service_provide/service_provider.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../widget/custom_textfield.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({Key? key}) : super(key: key);

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
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
                    cursorColor: ThemeService().theme == ThemeMode.dark
                        ? kMainColor
                        : kBlackColorText,
                    hintFontSize: 14,
                    textColor: ThemeService().theme == ThemeMode.dark
                        ? kLightColorGreyText
                        : kGreyColor,
                    hintTextColor: ThemeService().theme == ThemeMode.dark
                        ? kLightColorGreyText
                        : kGreyColor,
                    hintText: "search",
                  ),
                ),
                Image.asset(
                  "assets/Group 33365.png",
                  height: 42,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomText(
              title:
                  "Find the best service provider nearest to your location, in very fair price ",
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackColorText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              title: "Plumber",
              fontWeight: FontWeight.w500,
              fontSize: 21,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColorText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: serviceList.length,
                    itemBuilder: (context, index) {
                      return PlumberWidget(
                        service: serviceDate[index],
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}

class PlumberWidget extends StatefulWidget {
  final ServiceListModel? service;

  PlumberWidget({
    Key? key,
    this.service,
  }) : super(key: key);

  @override
  State<PlumberWidget> createState() => _PlumberWidgetState();
}

class _PlumberWidgetState extends State<PlumberWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.toScreen(context, ServiceProvider());
      },
      child: Container(
        color: ThemeService().theme == ThemeMode.dark
            ? kDarkBlackLightColor
            : kMainColor,
        margin: EdgeInsets.only(top: 10),
        child: Card(
          color: ThemeService().theme == ThemeMode.dark
              ? kDarkBlackLightColor
              : kMainColor,
          margin: EdgeInsets.zero,
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.23,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        widget.service!.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.62,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.29,
                                  child: CustomText(
                                    title: widget.service?.title,
                                    fontSize: 14,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kMainColor
                                            : kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    maxLines: 2,
                                  ),
                                ),
                                CustomText(
                                  title: "licensed ✔",
                                  fontSize: 9,
                                  maxLines: 1,
                                  color: kSecondaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/Heart.png",
                              height: 15,
                              color: ThemeService().theme == ThemeMode.dark
                                  ? kSecondaryColor
                                  : kBlackColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomText(
                          title: widget.service!.discripiton,
                          fontSize: 11,
                          maxLines: 3,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kLightColorGreyText
                              : kGreyColor,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemSize: 14,
                                  unratedColor:
                                      ThemeService().theme == ThemeMode.dark
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
                                CustomText(
                                  title: widget.service!.rating,
                                  fontSize: 8,
                                  maxLines: 1,
                                  color: ThemeService().theme == ThemeMode.dark
                                      ? kLightColorGreyText
                                      : kGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                  title: "starting from ",
                                  fontSize: 9,
                                  maxLines: 1,
                                  color: ThemeService().theme == ThemeMode.dark
                                      ? kLightColorGreyText
                                      : kBlackLightColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: CustomText(
                                    title: widget.service!.price,
                                    fontSize: 14,
                                    maxLines: 2,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kSecondaryColor
                                            : kPurPleColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
