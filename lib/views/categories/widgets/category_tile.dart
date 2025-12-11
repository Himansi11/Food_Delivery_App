import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapp/common/app_style.dart';
import 'package:foodapp/common/reusable_text.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/views/categories/category_page.dart';
import 'package:get/route_manager.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Get.to(() => const CategoryPage(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 900),
        );
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(category["imageUrl"], fit: BoxFit.contain,),
      ),
      title: ReusableText(text: category['title'], 
      style: appStyle(12, kGrey, FontWeight.normal)),
            
      trailing: Icon(Icons.arrow_back_ios_rounded, color: kGrey, size: 15.r),
      );
  }
}