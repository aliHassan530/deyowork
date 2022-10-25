import 'package:dyou/model/message_model.dart';
import 'package:dyou/screens/message/chat_screen.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel? message;

  MessageWidget({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.toScreen(context, ChatScreen());
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Card(
          elevation: 2,
          color:
              ThemeService().theme == ThemeMode.dark ? kBlackColor : kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          margin: EdgeInsets.zero,
          child: ListTile(
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
                      message?.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            title: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: CustomText(
                title: message!.title,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: ThemeService().theme == ThemeMode.dark
                    ? kMainColor
                    : kBlackColor,
                maxLines: 1,
              ),
            ),
            subtitle: CustomText(
              title: message!.subtitle,
              fontWeight: FontWeight.w400,
              fontSize: 14,
              maxLines: 1,
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kBlackColorText.withOpacity(0.7),
            ),
            trailing: CustomText(
              title: message!.trailing,
              fontSize: 14,
              maxLines: 1,
              color: ThemeService().theme == ThemeMode.dark
                  ? kLightColorGreyText
                  : kGreyColor.withOpacity(0.5),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
