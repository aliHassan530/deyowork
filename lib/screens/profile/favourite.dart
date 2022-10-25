import 'package:dyou/model/favourite_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/custom_text.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
          title: "My Favorites",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              color: ThemeService().theme == ThemeMode.dark
                  ? kDarkBlackLightColor
                  : kGreyLightColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                      ),
                    ),
                    child: CustomText(
                      title: "Fav List 1",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Paper Plus2.png",
                          height: 25,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kSecondaryColor
                              : kPurPleColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          title: "new List",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackColorText,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: favouriteList.length,
                itemBuilder: (context, index) {
                  return FavouriteWidget(
                    favourite: favouriteData[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
// final FavouriteModel? favourite;

class FavouriteWidget extends StatelessWidget {
  final FavouriteModel? favourite;

  FavouriteWidget({
    Key? key,
    this.favourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Card(
            margin: EdgeInsets.only(bottom: 1),
            color: ThemeService().theme == ThemeMode.dark
                ? kDarkBlackLightColor
                : kMainColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            favourite?.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: CustomText(
                      title: favourite?.title,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      maxLines: 1,
                      color: ThemeService().theme == ThemeMode.dark
                          ? kMainColor
                          : kBlackColorText,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: favourite!.subtitle,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kGreyColor
                            : kBlackColorText,
                      ),
                    ],
                  ),
                  trailing: Image.asset(
                    "assets/Heart2.png",
                    height: 18,
                    color: ThemeService().theme == ThemeMode.dark
                        ? kSecondaryColor
                        : kGreyColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomText(
                        title: favourite!.heading,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        maxLines: 1,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackColorText,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        child: ReadMoreText(
                          favourite?.detail,
                          trimLines: 4,
                          style: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          lessStyle: TextStyle(
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                          moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: ThemeService().theme == ThemeMode.dark
                                ? kLightColorGreyText
                                : kBlackColorText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Fixed Price",
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kMainColor
                                            : kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  CustomText(
                                    title: favourite!.price,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kLightColorGreyText
                                            : kBlackColor.withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Payment method",
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kMainColor
                                            : kBlackColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  CustomText(
                                    title: favourite!.method,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color:
                                        ThemeService().theme == ThemeMode.dark
                                            ? kLightColorGreyText
                                            : kBlackColor.withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //   child: CustomText(
                //     title: ongoing?.detail,
                //     fontSize: 14,
                //     color: kBlackColor,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
