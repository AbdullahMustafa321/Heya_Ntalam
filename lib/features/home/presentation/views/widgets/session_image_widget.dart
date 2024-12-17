import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionImageWidget extends StatelessWidget {
  const SessionImageWidget({
    super.key,
    required this.image, required this.height, required this.width,
  });

  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.r),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.black),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
