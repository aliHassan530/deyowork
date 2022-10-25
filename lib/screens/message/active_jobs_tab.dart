import 'package:dyou/model/message_model.dart';
import 'package:dyou/screens/message/chat_screen.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:flutter/material.dart';

import '../../theme_service/theme_service.dart';
import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';
import '../../widget/message_widget.dart';

class ActiveJobsTab extends StatefulWidget {
  const ActiveJobsTab({Key? key}) : super(key: key);

  @override
  State<ActiveJobsTab> createState() => _ActiveJobsTabState();
}

class _ActiveJobsTabState extends State<ActiveJobsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: messageList.length,
          itemBuilder: (context, index) {
            return MessageWidget(
              message: messageData[index],
            );
          }),
    );
  }
}

