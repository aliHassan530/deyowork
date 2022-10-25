import 'dart:io';

import 'package:dyou/utilites/constants.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../theme_service/theme_service.dart';
import '../../widget/chat_widget.dart';
import '../../widget/custom_textfield.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController msg = TextEditingController();
  File? _image;

  Future getImage() async {
    PickedFile? image =
        await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Image.asset(
                              "assets/Arrow 5.png",
                              height: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
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
                    ],
                  ),
                  Expanded(
                    child: Container(
                      child: ListTile(
                        title: CustomText(
                          title: "Ali khan",
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        subtitle: CustomText(
                          title: "online",
                          color: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackColorText.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        trailing: Image.asset(
                          "assets/Calling.png",
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  // color: kBlackColorText,
                  child: ListView(
                    children: [
                      RightBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      LeftBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      RightBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      LeftBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      RightBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      LeftBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      RightBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      LeftBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      RightBubble(
                        msg: "I need your service , Are you available?",
                        time: "02:12 PM",
                        translate: "Translate to english",
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      ],
                  ),
                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.84,
              //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              //   child: ListView(
              //     children: [
              //       // Column(
              //       //   children: [
              //       //     LeftBubble(
              //       //       msg:
              //       //       "Lorem ipsum dolor sit amet, consectetur adipis cing elit. Et adipiscing tellus lectusama quis magna.",
              //       //       time: "10:11",
              //       //     ),
              //       //     RightBubble(
              //       //       msg: "Lorem ipsum",
              //       //       time: "10:11",
              //       //     ),
              //       //     LeftBubble(
              //       //       msg: "Lorem ipsum dolor sit amet, consectetur adipis ",
              //       //       time: "10:11",
              //       //     ),
              //       //     Container(
              //       //       margin: const EdgeInsets.symmetric(vertical: 15),
              //       //       child: Row(
              //       //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       //         children: [
              //       //           Container(
              //       //               width: Get.width * 0.33,
              //       //               child: const Divider(
              //       //                 thickness: 2,
              //       //                 color: KGreyLightColor,
              //       //               )),
              //       //           Container(
              //       //             margin: EdgeInsets.symmetric(horizontal: 5),
              //       //             child: Text(
              //       //               "13.01.2022",
              //       //               style: secoundryTextStyle,
              //       //             ),
              //       //           ),
              //       //           Container(
              //       //               width: Get.width * 0.33,
              //       //               child: Divider(
              //       //                 thickness: 2,
              //       //                 color: KGreyLightColor,
              //       //               )),
              //       //         ],
              //       //       ),
              //       //     ),
              //       //     RightBubble(
              //       //       msg: "Lorem ipsum dolor sit amet",
              //       //       time: "10:11",
              //       //     ),
              //       //     LeftBubble(
              //       //       msg:
              //       //       "Sagittis lacus a diam ac porttitor pulvinar fusce maecenas amet. Lacinia in adipiscing posuere sagittis et, aliquam at sit in.",
              //       //       time: "10:11",
              //       //     ),
              //       //     RightBubble(
              //       //       msg: "Sagittis lacus diam",
              //       //       time: "10:11",
              //       //     ),
              //       //     RightBubble(
              //       //       msg: "Lacinia in adipiscing posuere",
              //       //       time: "10:11",
              //       //     ),
              //       //   ],
              //       // )
              //     ],
              //   ),
              // ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: ThemeService().theme == ThemeMode.dark
                      ? kBlackColor
                      :  kMainColor,
                  padding:
                      EdgeInsets.only(bottom: 50, top: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CustomTextField(
                          prefixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/Plus.png",
                                height: 21.8,
                              ),
                            ],
                          ),

                          textColor: ThemeService().theme == ThemeMode.dark
                              ? kGreyColor
                              : kGreyColor,
                          hintTextColor: ThemeService().theme == ThemeMode.dark
                              ? kGreyColor
                              : kGreyColor,
                          fillColor: ThemeService().theme == ThemeMode.dark
                              ? kDarkBlackLightColor
                              : kGreyLightColor,
                          cursorColor: ThemeService().theme == ThemeMode.dark
                              ? kMainColor
                              : kBlackLightColor,
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  getImage();
                                },
                                child: Image.asset(
                                  "assets/Camera.png",
                                  height: 21.8,
                                ),
                              ),
                            ],
                          ),
                          contentPaddingTop: 10,
                          textFontSize: 14,
                          hintFontSize: 14,
                          hintText: "Type here...",
                        ),
                      ),
                      Container(
                        height: 47,
                        width: 47,
                        child: Image.asset(
                          "assets/Send.png",
                          height: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


