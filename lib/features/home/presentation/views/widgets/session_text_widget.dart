import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/colors.dart';

class SessionTextWidget extends StatelessWidget {
  const SessionTextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        fontSize: screenWidth * 0.11,
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
