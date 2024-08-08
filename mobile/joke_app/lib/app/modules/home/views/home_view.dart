import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joke_app/app/data/di.dart';
import 'package:joke_app/app/global/widgets/base/base_silver_view.dart';
import 'package:joke_app/app/global/widgets/parts/banner.dart';
import 'package:joke_app/app/global/widgets/parts/footer.dart';
import 'package:joke_app/app/global/widgets/parts/header.dart';
import 'package:joke_app/app/modules/home/components/home_component.dart';

import '../controllers/home_controller.dart';

class HomeView extends BaseSilverView<HomeController> {
  const HomeView({super.key});

  @override
  Widget body(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: $r.theme.transparent,
        systemNavigationBarColor:
            Theme.of(context).colorScheme.onInverseSurface,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Header(),
              const JokeBanner(),
              if (controller.allVoted.value) ...[
                Expanded(
                  child: JokeMessage(
                    controller.jokeMessage.value,
                    isCenter: true,
                  ),
                ),
              ] else ...[
                Expanded(
                  child: CustomScrollView(
                    shrinkWrap: true,
                    slivers: [
                      SliverFillRemaining(
                        child: JokeMessage(
                          controller.jokeMessage.value,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100.h,
                  padding: EdgeInsets.only(bottom: 16.h, top: 8.h),
                  child: const JokeButtons(),
                )
              ]
            ],
          ),
        ),
        bottomNavigationBar: const Footer(),
      ),
    );
  }
}
