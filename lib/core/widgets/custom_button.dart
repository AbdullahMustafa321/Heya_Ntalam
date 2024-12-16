import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';



class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isIconRight;
  final String text;
  final IconData icon;
  const CustomButton({required this.onPressed, required this.isIconRight, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: kMainColor.withOpacity(0.7),
        shadowColor: kMainColor.withOpacity(0.5),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      ),
      onPressed: onPressed,
      child:isIconRight?
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10.w,),
          Icon(
            icon,
            color: Colors.yellowAccent,
          ),
        ],
      ):Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.yellowAccent,
          ),
        SizedBox(width: 10.w,),
          Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
