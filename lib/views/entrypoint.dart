import 'package:flutter/material.dart';
import 'package:foodapp/constants/constants.dart';
import 'package:foodapp/controllers/tab_index_controller.dart';
import 'package:get/get.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(TabIndexController());
    return Scaffold(
      body: Stack(     
        children:[
          Container(
            height: height,
            width: width,
            color: kOffwhite,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(data: Theme.of(context).copyWith(canvasColor: kPrimary), 
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedIconTheme: const IconThemeData(color: Colors.black38),
              selectedIconTheme: const IconThemeData(color: kSecondary),
              onTap: (value){
                print(value);
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.search), label:'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label:'Cart'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label:'Profilr'),],
            )),
          )
        ],
      ),
    );
  }
}