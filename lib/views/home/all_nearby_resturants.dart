import 'package:flutter/material.dart';
import 'package:foodapp/common/app_style.dart';
import 'package:foodapp/common/reusable_text.dart';
import 'package:foodapp/constants/constants.dart';

class AllNearbyResturants extends StatelessWidget {
  const AllNearbyResturants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(text: "All Nearby Resturants",
        style: appStyle(13, kGrey, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All Nearby Resturants")
      ),
    );
  }
}