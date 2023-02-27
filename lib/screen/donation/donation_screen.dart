import 'package:amitcharity/constants/constants.dart';
import 'package:flutter/material.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
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
                  height: 350,
                  width: double.infinity,
                  child: Image.network("https://www.whatsappimages.in/wp-content/uploads/2021/07/Top-HD-sad-quotes-for-whatsapp-status-in-hindi-Pics-Images-Download-Free.gif"),
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
                  children: const [
                    Text("عدد القطع",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
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



            ],
          ),
        ),
      ),
    );
  }
}
