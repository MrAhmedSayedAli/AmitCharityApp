import 'package:flutter/material.dart';

import 'package:amitcharity/constants/constants.dart';
import 'package:amitcharity/screen/home/home_screen.dart';
import 'package:amitcharity/screen/contact_us/contact_us.dart';
import 'package:amitcharity/screen/track_order/track_order.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int navIndex;
  const AppBottomNavigationBar({
    super.key, required this.navIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.call),label: "تواصل معنا"),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "الرئيسية"),
      BottomNavigationBarItem(icon: Icon(Icons.map),label: "تتبع الطلب"),
    ],
      onTap: (value) {

        switch(value){
          case 0: Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ContactUs()));
            break;
          case 1:Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            break;
          case 2:Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TrackOrder()));
            break;
        }

      },
      currentIndex: navIndex,
      backgroundColor: AppColors.primaryBackground,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedLabelStyle: const TextStyle(fontFamily: 'Cairo'),
      unselectedLabelStyle: const TextStyle(fontFamily: 'Cairo'),
    );
  }
}