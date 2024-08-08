import 'package:flutter/material.dart';

import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joke_app/app/data/di.dart';
import 'package:joke_app/app/global/constants/resources/assets.gen.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      duration: $r.times.twoSeconds,
      animationDuration: $r.times.med,
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      childWidget: Image.asset(
        Assets.icLogo.path,
        fit: BoxFit.cover,
        height: 80.h,
        width: 80.w,
      ),
    );
  }
}
