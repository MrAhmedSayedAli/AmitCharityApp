import 'package:flutter/material.dart';


import 'package:amitcharity/constants/constants.dart';
class MainButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final VoidCallback onPressed;

  const MainButton({Key? key, required this.onPressed, required this.text, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryBackground),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            )
        ),
        onPressed: onPressed,
        child: Text(text,style: const TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.w600,fontFamily: 'Cairo')),

      ),
    );
  }
}
