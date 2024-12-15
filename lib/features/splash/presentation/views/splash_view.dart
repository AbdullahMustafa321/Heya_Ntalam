import 'package:flutter/material.dart';
import 'package:heya_ntalam/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName='SplashView' ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SplashViewBody(),
    );
  }
}