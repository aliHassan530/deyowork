import 'package:dyou/model/ongoing_model.dart';
import 'package:flutter/material.dart';

import '../../widget/ongoing_tab_widget.dart';

class OngoingTab extends StatefulWidget {
  const OngoingTab({Key? key}) : super(key: key);

  @override
  State<OngoingTab> createState() => _OngoingTabState();
}

class _OngoingTabState extends State<OngoingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: ongoingList.length,
          itemBuilder: (context, index) {
            return OngoingWidget(
              ongoing: ongoingData[index],
            );
          }),
    );
  }
}
