import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heya_ntalam/core/constant/colors.dart';
import 'package:heya_ntalam/core/widgets/custom_button.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/session_image_widget.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/session_sound_icon_widget.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/session_text_widget.dart';

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
  void initState() {
    super.initState();
    widget.session.sessionDetails[_currentPage].playSound();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: CustomBackButton(),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.session.sessionDetails.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                    widget.session.sessionDetails[index].playSound();
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SessionImageWidget(
                          image: widget.session.sessionDetails[index].image),
                      SizedBox(height: 20.h),
                      SessionSoundIconWidget(
                          sound: widget.session.sessionDetails[index].sound),
                      SizedBox(height: 20.h),
                      SessionTextWidget(text: widget.session.sessionDetails[index].title),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (_currentPage > 0)
                  CustomButton(
                    onPressed: () {
                      _goToPreviousPage();
                    },
                    isIconRight: false,
                    text: 'السابق',
                    icon: Icons.arrow_back_ios_new,
                  )
                else
                  SizedBox(width: 120.w),
                if (_currentPage < widget.session.sessionDetails.length - 1)
                  CustomButton(
                    onPressed: () {
                      _goToNextPage();
                    },
                    isIconRight: true,
                    text: 'التالي',
                    icon: Icons.arrow_forward_ios_outlined,
                  )
                else
                  CustomButton(
                    onPressed: () {},
                    isIconRight: true,
                    text: 'اختبار',
                    icon: Icons.quiz_outlined,
                  ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
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

