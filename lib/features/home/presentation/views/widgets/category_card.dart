import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/colors.dart';
import '../../../data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.categoryModel,
  });
final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: kMainColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 1.r,
            spreadRadius: 1.r,
            offset: const Offset(0, 2), // Shadow position
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5.h,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
              categoryModel.image,
            ),
            radius: 23.r,
          ),
          Divider(color: Colors.black.withOpacity(0.1),),
          Text(
            categoryModel.title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.h,
          )
        ],
      ),
    );
  }
}
