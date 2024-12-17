import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heya_ntalam/core/widgets/custom_button.dart';
import 'package:heya_ntalam/generated/assets.dart';
import 'package:lottie/lottie.dart';

class FinishQuizViewBody extends StatefulWidget {
  const FinishQuizViewBody({super.key});

  @override
  State<FinishQuizViewBody> createState() => _FinishQuizViewBodyState();
}

class _FinishQuizViewBodyState extends State<FinishQuizViewBody> {
  @override
  void initState() {
    final player = AudioPlayer();
    player.play(AssetSource(Assets.soundsPassExam));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(Assets.lottiePassLottie),
        Lottie.asset(Assets.lottieHappyBoy),
        SizedBox(height: 20.h,),
        CustomButton(onPressed: (){
          Navigator.pop(context);
        }, isIconRight: false
            , text: 'الخروج الي قائمة الجلسات', icon: Icons.exit_to_app)
      ],
    );
  }
}
