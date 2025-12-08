import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/common/custom_appbar.dart';
import 'package:foodapp/common/custom_conatiner.dart';
import 'package:foodapp/constants/constants.dart';

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
        child: CustomConatiner(containerContent: Container())
      ),
    );
  }
}