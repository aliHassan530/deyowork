import 'package:dyou/utilites/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class DeclineScreen extends StatefulWidget {
  const DeclineScreen({Key? key}) : super(key: key);

  @override
  State<DeclineScreen> createState() => _DeclineScreenState();
}

class _DeclineScreenState extends State<DeclineScreen> {
  String? selectReason;
  List _selection = ["xyz&xyz1", "xyz&xy2", "xyz&xy3", "xyz&xyz4"];

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
          title: "Approval",
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
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Job Title",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Need an expert Plumber",
              color: kGreyColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Job Description",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title:
                  "I need a expert person to fix my kitchen’s sink. He must be very skillfull and a quick worker. If i get impress by his work then i will will a fair tip also. ",
              color: kBlackLightColor,
              lineHeight: 1.4,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Fix Budget",
              color: kBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "\$120",
              color: kBlackLightColor.withOpacity(0.8),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CustomText(
                  title: "Hired",
                  color: kBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomText(
                  title: "(21/06/2022)",
                  color: kBlackColor.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 46,
                    width: 46,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/Ellipse 30.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              title: CustomText(
                title: "Adam",
                fontWeight: FontWeight.w500,
                fontSize: 15,
                maxLines: 1,
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kPurPleColor,
                    ),
                  ),
                ),
                child: CustomText(
                  title: "view profile",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: kPurPleColor,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              title: "Country",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: kBlackLightColor,
            ),

            SizedBox(
              height: 10.h,
            ),
            // selectcountry
            Container(
              height: 48,
              decoration: BoxDecoration(
                  color: kGreyLightColor,
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton(
                elevation: 0,
                itemHeight: 65,
                underline: Container(
                  height: 1.0,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.transparent, width: 0.0))),
                ),
                hint: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "xyz&xyz",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: kLightColorGreyText),
                    )),
                dropdownColor: kGreyLightColor,
                icon: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset(
                      "assets/Arrow 2.png",
                      height: 10,
                    )),
                isExpanded: true,
                value: selectReason,
                onChanged: (newvalue) {
                  setState(() {
                    selectReason = newvalue as String?;
                  });
                },
                items: _selection.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          valueItem,
                          style: TextStyle(
                              fontSize: 14, color: kLightColorGreyText),
                        )),
                  );
                }).toList(),
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            CustomText(
              title: "Please explain your reason",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kBlackLightColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              fillColor: kGreyLightColor,
              hintText:
                  "xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz xyz&xyz ",
              textFontSize: 13,
              maxLines: 5,
              cursorColor: kBlackColorText,
              textColor: kBlackColorText,
              hintTextColor: kBlackColorText,
              hintFontSize: 13,
            ),

            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              onPressed: () {},
              elevation: 3,
              btnColor: kSecondaryColor,
              title: "Submit",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              btnRadius: 8,
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
