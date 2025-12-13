import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/common/custom_appbar.dart';
import 'package:foodapp/common/custom_conatiner.dart';
import 'package:foodapp/common/heading.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/views/home/all_fastest_foods_pages.dart';
import 'package:foodapp/views/home/all_nearby_resturants.dart';
import 'package:foodapp/views/home/recommendations_page.dart';
import 'package:foodapp/views/home/widgets/category_list.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h), 
        child: const CustomAppbar()
       ),
      body: SafeArea(
        child: CustomConatiner(containerContent: Column(
          children: [
            const CategoryList(),
            Heading(
              text: "Nearby Resturants", 
            onTap: () {
              Get.to(() => const AllNearbyResturants(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
            },
            ),

            Heading(
              text: "Try Something New", 
            onTap: () {
              Get.to(() => const Recommendations(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
            },
            ),

            Heading(
              text: "Food Closer to you", 
            onTap: () {
              Get.to(() => const AllFastestFoods(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
            },
            )
          ],
        ))
      ),
    );
  }
}