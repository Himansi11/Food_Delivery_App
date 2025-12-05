import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/views/entrypoint.dart';
import 'package:get/get.dart';

Widget defaultHome= MainScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BiteBox',
          theme: ThemeData(
            scaffoldBackgroundColor: kOffwhite,
            iconTheme: const IconThemeData(color: kDark),
            primarySwatch: Colors.grey,
          ),
          home: defaultHome,
        );
      },
    );
  }
}

