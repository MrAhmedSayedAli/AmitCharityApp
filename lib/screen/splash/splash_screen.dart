import 'package:amitcharity/Screen/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amitcharity/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250.h,
              width: 250.w,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                margin: EdgeInsets.only(right: 50.sp, left: 50.sp),
                child: RotatedBox(
                  quarterTurns: 2,
                  child: LinearProgressIndicator(
                    color: Colors.white,
                    backgroundColor: Colors.grey.withOpacity(0.9),
                    minHeight: 2,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
