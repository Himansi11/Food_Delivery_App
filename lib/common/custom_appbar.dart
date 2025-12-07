import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/common/app_style.dart';
import 'package:foodapp/common/reusable_text.dart';
import 'package:foodapp/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      height: 110.h,
      width: width,
      color: kOffwhite,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(),
            Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(text:"Deliver to", style: appStyle(13, kSecondary, FontWeight.w600)),
                  Text("16768 21st Ave N, Plymouth, MN 55447", style: appStyle(13, kDark, FontWeight.w400),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}