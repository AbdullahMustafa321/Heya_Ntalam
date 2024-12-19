import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heya_ntalam/core/widgets/custom_button.dart';
import 'package:heya_ntalam/features/home/presentation/views/quiz_view.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                  final sessionDetails = widget.session.sessionDetails;
                  return ListView(
                    children: [
                      SessionImageWidget(
                          image: sessionDetails[index].image, height: screenHeight*0.4, width: screenWidth*0.9,),
                      SizedBox(height: screenHeight*0.08),
                      SessionSoundIconWidget(
                          sound:sessionDetails[index].sound),
                      SizedBox(height: screenHeight*0.04),
                      Center(child: SessionTextWidget(text: sessionDetails[index].title)),
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
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizView(session: widget.session,),));
                    },
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

