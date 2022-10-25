import 'package:dyou/utilites/constants.dart';
import 'package:flutter/material.dart';

import '../../model/ongoing_model.dart';
import '../../widget/custom_text.dart';
import '../../widget/ongoing_tab_widget.dart';

class ProposalList extends StatefulWidget {
  const ProposalList({Key? key}) : super(key: key);

  @override
  State<ProposalList> createState() => _ProposalListState();
}

class _ProposalListState extends State<ProposalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: kMainColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Image.asset(
              "assets/Arrow 5.png",
              height: 20,
            ),
          ),
        ),
        centerTitle: true,
        title: CustomText(
          title: "Proposals",
          color: kBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 19,
        ),
      ),
      body: Container(
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
      ),
    );
  }
}
