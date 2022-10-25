import 'package:dyou/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilites/constants.dart';
import '../../widget/custom_text.dart';

class ProposalDetail extends StatefulWidget {
  const ProposalDetail({Key? key}) : super(key: key);

  @override
  State<ProposalDetail> createState() => _ProposalDetailState();
}

class _ProposalDetailState extends State<ProposalDetail> {
  List<String> fileList = [
    "file1.mp4",
    "file2.mp4",
    "file3.mp4",
  ];

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
          title: "Detail",
          color: kBlackColor,
          fontWeight: FontWeight.w500,
          fontSize: 19,
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Image.asset(
                  "assets/Close Square.png",
                  height: 20,
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
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
                                  "assets/Ellipse 28.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        title: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: CustomText(
                            title: "Adam",
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "02:10pm",
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: kBlackColorText,
                            ),
                          ],
                        ),
                        trailing: Container(
                          width: 110,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomText(
                                title: "5",
                                fontSize: 15,
                                maxLines: 1,
                                color: kBlackColor,
                                fontWeight: FontWeight.w500,
                              ),
                              RatingBar.builder(
                                initialRating: 0,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 1,
                                itemSize: 15,
                                unratedColor: kPurPleColor,
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
                                title: "(21)",
                                fontSize: 12,
                                maxLines: 1,
                                color: kBlackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: CustomText(
                          title:
                              "I’ve read your job description and i’ve find myself best for this job. Let me tell you why would you prefer me over others. I have alot of experince in this field and i’ll do this task quickly and on time. i hope you find my proposal outstanding and hire me for this job.",
                          fontSize: 14,
                          color: kBlackColorText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Offer",
                        color: kBlackLightColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        title: "\$120",
                        color: kGreyColor.withOpacity(0.7),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Timeline",
                      color: kBlackLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      title: "Less than two days",
                      color: kGreyColor.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Attachments",
              color: kBlackLightColor,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: fileList.length,
                  itemBuilder: (context, index) {
                    return SelectFileTile(
                      title: fileList[index],
                    );
                  }),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: CustomButton(
                    onPressed: () {},
                    elevation: 3,
                    title: "Hire Him",
                    fontSize: 15,
                    textColor: kBlackColorText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: kWhiteLightColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/Chat.png",
                    height: 29,
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SelectFileTile extends StatelessWidget {
  const SelectFileTile({
    this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: kGreyLightColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        minLeadingWidth: -4,
        leading: Image.asset(
          "assets/Folder.png",
          height: 22,
        ),
        title: CustomText(
          title: title,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: kBlackLightColor,
        ),
        trailing: Image.asset(
          "assets/Paper Download.png",
          height: 22,
        ),
      ),
    );
  }
}
