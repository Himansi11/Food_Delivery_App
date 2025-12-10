import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/common/app_style.dart';
import 'package:foodapp/common/reusable_text.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/constants/uidata.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffwhite,
        title: ReusableText(text: "All Categories",
         style: appStyle(12, kGrey, FontWeight.w600)),
      ),

      body: Container(
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        height: height,
        child: ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(categories.length, (i){
        var category = categories[i];
        return ListTile(
          leading: CircleAvatar(
            radius: 18.r,
            backgroundColor: kGrayLight,
            backgroundImage: NetworkImage(category["imageUrl"]),
          ),
          );
         }),
        ),
      ),
    );
  }
}