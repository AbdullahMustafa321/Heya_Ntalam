import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import '../../../../../generated/assets.dart';
import '../../../../home/presentation/views/home_view.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    navigate();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(Assets.lottieSplashScreenLottie),
              ],
            ),
          );
  }


  void navigate() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView()));
    });
  }

}