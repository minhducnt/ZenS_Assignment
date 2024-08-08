import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joke_app/app/data/di.dart';
import 'package:joke_app/app/global/utils/helpers/misc.dart';
import 'package:joke_app/app/global/utils/ui_utils.dart';
import 'package:joke_app/app/global/widgets/buttons/small_button_container.dart';

import '../controllers/home_controller.dart';

class JokeMessage extends GetView<HomeController> {
  final String? jokeMessage;
  final bool isCenter;

  const JokeMessage(
    this.jokeMessage, {
    super.key,
    this.isCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.w,
        vertical: 40.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              isStringEmpty(jokeMessage),
              textAlign: TextAlign.justify,
              style: $r.styles.pRegular.copyWith(fontSize: 15.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class JokeButtons extends GetView<HomeController> {
  const JokeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SmallButtonContainer(
            marginLeft: 30.w,
            marginRight: 20.w,
            text: localeLang.like,
            cusHeight: 40.h,
            radius: 0.r,
            color: Theme.of(context).colorScheme.secondary,
            borderColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            textColor: Theme.of(context).colorScheme.onPrimary,
            onTap: () async {
              await controller.voteJoke(
                controller.jokeId.value,
                controller.jokeMessage.value,
                true,
              );
            },
          ),
        ),
        Expanded(
          child: SmallButtonContainer(
            marginRight: 30.w,
            marginLeft: 20.w,
            text: localeLang.dislike,
            cusHeight: 40.h,
            radius: 0.r,
            color: Theme.of(context).colorScheme.primary,
            borderColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            textColor: Theme.of(context).colorScheme.onPrimary,
            onTap: () async {
              await controller.voteJoke(
                controller.jokeId.value,
                controller.jokeMessage.value,
                false,
              );
            },
          ),
        ),
      ],
    );
  }
}
