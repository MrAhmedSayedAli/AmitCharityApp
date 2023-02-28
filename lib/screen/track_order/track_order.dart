import 'package:flutter/material.dart';

import 'package:amitcharity/constants/constants.dart';
import 'package:amitcharity/components/bottom_navigation_bar.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(navIndex: 2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryBackground,
        title: const Text("تتبع الاوردر",style: TextStyle(fontFamily: 'Cairo')),
        centerTitle: true,
      ),
      backgroundColor: AppColors.primaryBody,
      body: Column(
        children: [
          SizedBox(
              height: 400,
              child: Image.asset("assets/images/ic_empty.png"),
            ),
        ],
      ),
    );
  }
}
