import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:joke_app/app/data/di.dart';

class JokeBanner extends StatelessWidget {
  const JokeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.only(
        top: 32.h,
        bottom: 32.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Column(
        children: [
          Text(
            'A joke a day keeps the doctor away',
            style: $r.styles.pSemiBold.copyWith(
              color: Colors.white,
              fontSize: 16.sp,
            ),
          ),
          Gap(25.h),
          Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style: $r.styles.pMedium.copyWith(
              color: Colors.white,
              fontSize: 12.sp,
            ),
          )
        ],
      ),
    );
  }
}
