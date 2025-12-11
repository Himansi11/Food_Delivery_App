import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffwhite,
        title: const Text("Category Page"),
      ),
      body: Center(
        child: Text("Category Page"),
      ),
    );
  }
}