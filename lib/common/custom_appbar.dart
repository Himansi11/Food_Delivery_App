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
        margin: EdgeInsets.only(top:20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor: kSecondary,
                backgroundImage: const AssetImage('assets/profile1.jpg'),
              ),
             Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(text:"Deliver to", 
                  style: appStyle(13, kSecondary, FontWeight.w600)),
                  SizedBox(
                    width: width*0.65,
                    child: Text("16768 21st Ave N, Plymouth, MN 55447",
                    overflow: TextOverflow.ellipsis,
                    style: appStyle(11, kGrayLight, FontWeight.normal),),
                  ),
                ],
              ),
            ),

          ],
        ),
          Text(
          getTimeofDay(),
          style: const TextStyle(fontSize: 35),
          )
       ]
      ),
      )
    );
  }
  String getTimeofDay(){
    DateTime now=DateTime.now();
    int hour=now.hour;

    if(hour>=0 && hour<12){
      return ' ☀️ ';
    }else if(hour>=12 && hour<16){
      return ' ⛅ ';
    }
    else{
      return ' 🌙 ';
    }
  }
}