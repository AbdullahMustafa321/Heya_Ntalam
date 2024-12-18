import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/session_image_widget.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/session_sound_icon_widget.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/widgets/custom_back_button.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/assets.dart';
import '../../../data/models/category_model.dart';
import '../finish_quiz_view.dart';

class QuizViewBody extends StatefulWidget {
  const QuizViewBody({super.key, required this.session});

  final Session session;

  @override
  State<QuizViewBody> createState() => _QuizViewBodyState();
}

class _QuizViewBodyState extends State<QuizViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  String? _feedbackImage;
  String? _answerSound;
  final player = AudioPlayer();

  int? _tappedOptionIndex;

  void _checkAnswer(bool isCorrect, int optionIndex) {
    setState(() {
      _feedbackImage =
          isCorrect ? Assets.lottieRightLottie : Assets.lottieWrongLottie;
      _tappedOptionIndex = optionIndex;
    });
    _answerSound = isCorrect ? Assets.soundsBravo : Assets.soundsTryAgain;
    player.play(AssetSource(_answerSound!));
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _feedbackImage = null;
        _tappedOptionIndex = null;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    widget.session.questions[_currentPage].playSound();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: CustomBackButton(),
              ),
              Text(
                'أختر الصورة الصحيحة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.09),
              ),
              SizedBox(height: screenHeight * 0.01),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.session.questions.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                      widget.session.questions[index].playSound();
                      _feedbackImage = null;
                      _tappedOptionIndex = null;
                    });
                  },
                  itemBuilder: (context, index) {
                    final question = widget.session.questions[index];
                    final options = question.options;

                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () => _checkAnswer(options[0].isCorrect, 0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SessionImageWidget(
                                image: options[0].image,
                                height: screenHeight * 0.25,
                                width: screenWidth * 0.55,
                              ),
                              if (_tappedOptionIndex == 0 &&
                                  _feedbackImage != null)
                                Lottie.asset(
                                  _feedbackImage!,
                                  width: 170.w,
                                  height: 170.h,
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: () => _checkAnswer(options[1].isCorrect, 1),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SessionImageWidget(
                                image: options[1].image,
                                height: screenHeight * 0.25,
                                width: screenWidth * 0.55,
                              ),
                              if (_tappedOptionIndex == 1 &&
                                  _feedbackImage != null)
                                Lottie.asset(
                                  _feedbackImage!,
                                  width: 170.w,
                                  height: 170.h,
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight*0.05),
                        SessionSoundIconWidget(sound: question.sound),
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
                  if (_currentPage < widget.session.questions.length - 1)
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FinishQuizView(),
                            ));
                      },
                      isIconRight: true,
                      text: 'انهاء ألاختبار',
                      icon: Icons.school_outlined,
                    ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    player.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPage < widget.session.questions.length - 1) {
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
