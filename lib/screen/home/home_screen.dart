import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:amitcharity/constants/constants.dart';

import 'package:amitcharity/components/main_button.dart';

import 'package:amitcharity/components/bottom_navigation_bar.dart';

import 'package:amitcharity/screen/donation/donation_screen.dart';


final List<String> ImagesList = [
  'https://cdn.hourdetroit.com/wp-content/uploads/sites/20/2021/11/clothing-donations.jpg',
  'https://rinse-cdn.s3.amazonaws.com/media/filer_public/61/fc/61fcab6d-23dd-4c0c-b21e-0f672ed7f39a/clothing-donation-etiquette-and-how-to-guide.jpg',
  'https://good360.org/wp-content/uploads/2020/01/clothing-donations_box.jpg',
  'https://www.thespruce.com/thmb/zMYux9ypGplvXe_S0Gck1sbd7LI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/laundry-tips-before-you-donate-clothes-4046404-01-ca8bf91d0b9f418689cec82662381c09.jpg'
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(navIndex: 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryBackground,
        title: const Text("الرئيسية",style: TextStyle(fontFamily: 'Cairo')),
        centerTitle: true,
      ),
      backgroundColor: AppColors.primaryBody,
      body: Directionality(
        textDirection: appDir,
        child: Column(
          children: [
            SizedBox(height: 15.sp),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  reverse: true,
                  enlargeCenterPage: true,
                ),
                items: ImagesList.map((item) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: item,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                        ),
                      ),
                    )).toList(),
              ),
            ),
            SizedBox(height: 10.sp),
            MainButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DonationScreen()));
            },
              text: 'تبرع بالملابس',
              height: 60, width: MediaQuery.of(context).size.width/1.4,),
          ],
        ),
      ),
    );
  }
}


