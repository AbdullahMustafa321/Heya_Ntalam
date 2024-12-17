import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionSoundIconWidget extends StatelessWidget {
  const SessionSoundIconWidget({
    super.key,
    required this.sound,
  });

  final String sound;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource(sound));
      },
      icon: Icon(
        Icons.volume_up_outlined,
        size: 50.sp,
        color: Colors.black,
      ),
    );
  }
}

