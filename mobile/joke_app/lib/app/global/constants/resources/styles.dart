import 'package:flutter/material.dart';

import 'package:joke_app/app/data/di.dart';

/// Define text styles
@immutable
class AppTextStyles {
  final TextStyle pRegular = TextStyle(
    fontWeight: FontWeight.w400,
    color: $r.theme.black,
    letterSpacing: 0,
    decoration: TextDecoration.none,
  );

  final TextStyle pMedium = TextStyle(
    fontWeight: FontWeight.w500,
    color: $r.theme.black,
    letterSpacing: 0,
    decoration: TextDecoration.none,
  );

  final TextStyle pSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: $r.theme.black,
    letterSpacing: 0,
    decoration: TextDecoration.none,
  );

  final TextStyle pBold = TextStyle(
    fontWeight: FontWeight.bold,
    color: $r.theme.black,
    letterSpacing: 0,
    decoration: TextDecoration.none,
  );
}
