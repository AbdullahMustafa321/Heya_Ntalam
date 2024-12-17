import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/colors.dart';

class SessionTextWidget extends StatelessWidget {
  const SessionTextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 60.sp,
        fontWeight: FontWeight.bold,
        color: kMainColor,
        shadows: [
          Shadow(
            offset: Offset(-1.5, -1.5),
            color: Colors.black,
          ),
          Shadow(
            offset: Offset(1.5, -1.5),
            color: Colors.black,
          ),
          Shadow(
            offset: Offset(1.5, 1.5),
            color: Colors.black,
          ),
          Shadow(
            offset: Offset(-1.5, 1.5),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
