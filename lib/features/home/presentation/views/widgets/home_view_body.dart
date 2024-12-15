import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../generated/assets.dart';
import '../../../data/models/category_model.dart';
import '../sessions_list_view.dart';
import 'category_card.dart';


class HomeViewBody extends StatelessWidget {
   HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            Lottie.asset(Assets.lottieHiLottie),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: sessions.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 1.6.w
                ),
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          context) => SessionsListView(categoryModel: sessions[index],),));
                    },
                      child: CategoryCard(categoryModel: sessions[index]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
