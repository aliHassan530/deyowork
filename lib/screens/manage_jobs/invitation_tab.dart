import 'package:dyou/model/invitation_model.dart';
import 'package:flutter/material.dart';

import '../../widget/invitation_widget.dart';

class InvitationTab extends StatefulWidget {
  const InvitationTab({Key? key}) : super(key: key);

  @override
  State<InvitationTab> createState() => _InvitationTabState();
}

class _InvitationTabState extends State<InvitationTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: invitationList.length,
          itemBuilder: (context, index) {
            return InvitationWidget(
              ongoing: invitationData[index],
            );
          }),
    );
  }
}
