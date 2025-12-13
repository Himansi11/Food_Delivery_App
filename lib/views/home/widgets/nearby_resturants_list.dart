import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/constants/uidata.dart';

class NearbyResturants extends StatelessWidget {
  const NearbyResturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(restaurants.length, (i){
        var category = categories[i];
        return Container();
      }),
    ),
    );
  }
}
