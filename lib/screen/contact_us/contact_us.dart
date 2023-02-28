import 'package:flutter/material.dart';

import 'package:amitcharity/constants/constants.dart';
import 'package:amitcharity/components/bottom_navigation_bar.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';

const List contactUsPhoneList = [
  {'icon': Icons.phone, 'label': "01012345678"},
  {'icon': Icons.phone, 'label': "01098765432"},
  {'icon': Icons.phone, 'label': "01074185296"},
];

const List contactUsSocialList = [
  {'icon': Icons.email, 'label': "abcasd@gmail.com"},
  {'icon': Icons.facebook, 'label': "https://www.facebook.com/fakeaccount"},
  {'icon': Icons.photo, 'label': "https://www.insta.com/fakeaccount"},
  {'icon': Icons.link, 'label': "https://www.twitter.com/fakeaccount"},
];

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ScrollController scrollingFabAnimatedController = ScrollController(); //<- TODO::USE IT

    return Scaffold(
      floatingActionButton: ScrollingFabAnimated(
        icon: const Icon(Icons.help,color: Colors.white),
        text: const Text("FeedBack",style: TextStyle(color: Colors.white,)),
        height: 40,
        color: AppColors.primaryBackground,
        onPress: () {},
        scrollController: scrollingFabAnimatedController,
      ),
      bottomNavigationBar: const AppBottomNavigationBar(navIndex: 0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryBackground,
        title: const Text("تواصل معنا", style: TextStyle(fontFamily: 'Cairo')),
        centerTitle: true,
      ),
      backgroundColor: AppColors.primaryBody,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: const Text("Phone Numbers"),
          ),
          const SizedBox(
            height: 5,
          ),
          ...List.generate(contactUsPhoneList.length, (index) {
            return Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent, width: 1)),
              padding: const EdgeInsets.only(right: 10, left: 10),
              margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
              child: Row(
                children: [
                  Icon(contactUsPhoneList[index]['icon'],
                      color: AppColors.primaryBackground),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(contactUsPhoneList[index]['label'],
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            );
          }),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: const Text("Socials"),
          ),
          const SizedBox(
            height: 5,
          ),
          ...List.generate(contactUsSocialList.length, (index) {
            return Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.greenAccent, width: 1)),
              padding: const EdgeInsets.only(right: 10, left: 10),
              margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
              child: Row(
                children: [
                  Icon(contactUsSocialList[index]['icon'],
                      color: AppColors.primaryBackground),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(contactUsSocialList[index]['label'],
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            );
          }),
          Center(
            child: SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width / 2.2,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primaryBody),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: AppColors.primaryBackground, width: 2),
                    ))),
                onPressed: () {},
                child: const Text("حذف الحساب",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Cairo')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
