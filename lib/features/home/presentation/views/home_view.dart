import 'package:flutter/material.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
static const routeName = 'homeView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HomeViewBody(),
    );
  }
}