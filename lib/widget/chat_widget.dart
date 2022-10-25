import 'package:dyou/theme_service/theme_service.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeftBubble extends StatefulWidget {
  var msg;
  var emoji;
  var time;
  var translate;

  LeftBubble({this.msg, this.emoji, this.time, this.translate});

  @override
  _LeftBubbleState createState() => _LeftBubbleState();
}

class _LeftBubbleState extends State<LeftBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              color: ThemeService().theme == ThemeMode.dark
                  ? kGreyColor
                  : kWhiteLightColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      widget.msg,
                      style: TextStyle(
                        fontSize: 13,
                        color: ThemeService().theme == ThemeMode.dark
                            ? kMainColor
                            : kBlackLightColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10.h,
              ),
              Text(
                widget.time,
                style: TextStyle(
                  color: kBlackColorText.withOpacity(0.5),
                  fontSize: 11,
                ),
              ),
              Text(
                widget.translate,
                style: TextStyle(
                  color: kBlackLightColor.withOpacity(0.8),
                  fontSize: 11,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RightBubble extends StatefulWidget {
  var msg;
  var emoji;
  var time;
  var translate;

  RightBubble({this.msg, this.emoji, this.time, this.translate});

  @override
  _RightBubbleState createState() => _RightBubbleState();
}

class _RightBubbleState extends State<RightBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              color: ThemeService().theme == ThemeMode.dark
                  ? kDarkSecondaryColor
                  : kSecondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      widget.msg,
                      style: TextStyle(
                        fontSize: 13,
                        color: kBlackLightColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.translate,
                style: TextStyle(
                  color: kBlackLightColor.withOpacity(0.8),
                  fontSize: 11,
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Text(
                widget.time,
                style: TextStyle(
                  color: kBlackColorText.withOpacity(0.5),
                  fontSize: 11,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
