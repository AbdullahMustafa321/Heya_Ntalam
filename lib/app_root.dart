import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constant/colors.dart';
import 'features/splash/presentation/views/splash_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
        splitScreenMode: true,
        designSize:  const Size(360,690),
        builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: MaterialApp(
            locale: Locale('ar'), // تعيين اللغة الافتراضية
            supportedLocales: [
              Locale('en'),
              Locale('ar'),
            ],
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              scaffoldBackgroundColor: kBackGroundColor
            ),
            debugShowCheckedModeBanner: false,

            home: SplashView(),
          ),
        );
        },
       );
  }
}
