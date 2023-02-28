import 'package:flutter/material.dart';

//Second

import 'package:amitcharity/constants/constants.dart';
class SecondButton extends StatelessWidget {

  final double height;
  final double width;
  final IconData icon;
  final VoidCallback onPressed;

  const SecondButton({Key? key, required this.onPressed, required this.icon, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryBody),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side:const BorderSide(color: AppColors.primaryBackground,width: 2),
                )
            )
        ),
        onPressed: onPressed,
        child: Icon(icon,color: Colors.grey,),

      ),
    );
  }
}
