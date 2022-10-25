import 'package:dyou/model/categories_home_model.dart';
import 'package:dyou/screens/home/services_list.dart';
import 'package:dyou/utilites/constants.dart';
import 'package:dyou/utilites/helper.dart';
import 'package:dyou/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CategoriesHomeWidget extends StatelessWidget {
  final CategoriesHomeModel? categories;

  CategoriesHomeWidget({
    Key? key,
    this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.toScreen(context, ServiceList());
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 146,
                  width: 101,
                  child: Image.asset(
                    categories!.img,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: CustomText(
                    title: categories!.title,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: kMainColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
