import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/session_card.dart';

import '../../../data/models/category_model.dart';

class SessionsListViewBody extends StatelessWidget {
  const SessionsListViewBody({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: categoryModel.sessions.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 5.h,
                childAspectRatio: 1.6.w
            ),
              itemBuilder: (context, index) {
                return SessionCard(
                    text: categoryModel.sessions[index].title);
              },
            ),
          )
        ],
      ),
    ));
  }
}
