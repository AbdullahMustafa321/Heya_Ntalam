import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../generated/assets.dart';

class SessionCard extends StatelessWidget {
  final String text;

  const SessionCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: kMainColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 1.r,
                spreadRadius: 1.r,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 90.w,
          child: Image.asset(
            Assets.imagesSetionImage,
            width: 100.w,
            height: 100.h,
          ),
        ),
      ],
    );
  }
}
