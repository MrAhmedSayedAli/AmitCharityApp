
import 'package:flutter/material.dart';

import 'package:amitcharity/constants/constants.dart';
import 'package:amitcharity/components/main_button.dart';
import 'package:amitcharity/components/second_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.primaryBackground),
      ),
      body: Directionality(
        textDirection: appDir,
        child: Scaffold(
          body: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.greenAccent)
                  ),
                  padding: const EdgeInsets.only(right: 50,left: 50),
                  margin: const EdgeInsets.all(10),
                  height: 250,
                  width: double.infinity,
                  child: Image.asset("assets/images/addimage.png"),
                ),
              ),
              const SizedBox(height: 25,),


              Container(
                height: 75,

                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.greenAccent,width: 1)
                ),
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Text("عدد القطع",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    Container(
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15,),

              Container(
                height: 50,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.greenAccent,width: 1)
                ),
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Icon(Icons.maps_ugc_sharp),
                    SizedBox(width: 5,),
                    Text("العنوان ... ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SecondButton(
                      height: 70.sp,
                      width: MediaQuery.of(context).size.width/3,
                      icon: Icons.calendar_month, onPressed: () {

                    },
                    ),
                    SecondButton(
                      height: 70.sp,
                      width: MediaQuery.of(context).size.width/3,
                      icon: Icons.timer, onPressed: () {

                    },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              MainButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DonationScreen()));
                },
                text: 'ارسال',
                height: 45, width: MediaQuery.of(context).size.width/2,),

            ],
          ),
        ),
      ),
    );
  }
}
