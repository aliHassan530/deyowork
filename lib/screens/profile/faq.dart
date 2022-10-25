import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/appBar_widget.dart';
import '../../widget/expand_tile.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
              "assets/Arrow 5.png",
              height: 24.h,
              color: ThemeService().theme == ThemeMode.dark
                  ? kMainColor
                  : kBlackColor,
            ),
          ),
        ),
        centerTitle: true,
        title: AppbarText(
          title: "FAQs",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const ExpandTile(
              title: "How can i use this app?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            const ExpandTile(
              title: "How can i place an order?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            const ExpandTile(
              title: "How you charge me?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            const ExpandTile(
              title: "is this plateform safe?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
            const ExpandTile(
              title: "How can i use this app?",
              detail:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit accumsan sed vel cras ultrices ullamcorper dolor tortor. At habitant congue quis ultricies tristique vitae.",
            ),
          ],
        ),
      ),
    );
  }
}
