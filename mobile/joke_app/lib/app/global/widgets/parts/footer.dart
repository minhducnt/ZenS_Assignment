import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:joke_app/app/data/di.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.24.sh,
      width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.only(top: 64.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: Colors.grey.shade300)),
      ),
      child: Column(
        children: [
          Text(
            'This appis created as part of Hlsolutions program. The materials con- tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor- mation contained on this site.',
            textAlign: TextAlign.center,
            style: $r.styles.pRegular.copyWith(
              fontSize: 12.sp,
              color: const Color(0xff6B6B6B),
            ),
          ),
          Gap(16.h),
          Text(
            'Copyright 2021 HLS',
            style: $r.styles.pRegular.copyWith(fontSize: 13.sp),
          )
        ],
      ),
    );
  }
}
