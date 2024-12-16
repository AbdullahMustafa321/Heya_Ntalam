import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heya_ntalam/core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_back_button.dart';
import '../../../data/models/category_model.dart';

class SessionViewBody extends StatefulWidget {
  const SessionViewBody({super.key, required this.session});

  final Session session;

  @override
  _SessionViewBodyState createState() => _SessionViewBodyState();
}

class _SessionViewBodyState extends State<SessionViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 8.h),
              child: CustomBackButton(),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.session.sessionDetails.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.r),
                        height: 280.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Image.asset(
                          widget.session.sessionDetails[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      IconButton(onPressed: (){widget.session.sessionDetails[index].playSound();}, icon: Icon(Icons.multitrack_audio,size: 50.sp,)),
                      SizedBox(height: 20.h,),
                      Text(widget.session.sessionDetails[index].title,style: TextStyle(fontSize: 60.sp,fontWeight: FontWeight.bold),),

                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                    onPressed: () {
                      _goToPreviousPage();
                    },
                    isIconRight: false,
                    text: 'السابق',
                    icon: Icons.arrow_back_ios_new),
                CustomButton(
                    onPressed: () {
                      _goToNextPage();
                    },
                    isIconRight: true,
                    text: 'التالي',
                    icon: Icons.arrow_forward_ios_outlined),
              ],
            ),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }

  void _goToNextPage() {
    if (_currentPage < widget.session.sessionDetails.length - 1) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _currentPage--;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}

