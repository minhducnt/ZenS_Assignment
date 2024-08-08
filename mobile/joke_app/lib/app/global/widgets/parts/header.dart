import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:joke_app/app/global/constants/resources/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Image.asset(
            Assets.icLogo.path,
            width: 48.w,
          ),
          const Spacer(),
          const AccountWidget(),
        ],
      ),
    );
  }
}

class AccountWidget extends StatelessWidget {
  const AccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Handcrafted by'),
            Text('Jim HLS'),
          ],
        ),
        Gap(6.w),
        CircleAvatar(
          backgroundImage: AssetImage(
            Assets.icAvatar.path,
          ),
        )
      ],
    );
  }
}
