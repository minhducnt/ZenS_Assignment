import 'package:flutter/material.dart';

import 'package:joke_app/app/global/constants/resources/colors.dart';
import 'package:joke_app/app/global/constants/resources/durations.dart';
import 'package:joke_app/app/global/constants/resources/styles.dart';

/// Configuration
@immutable
class AppConfig {
  //* App
  final appName = 'Jokee Single Serving APP';

  //* Language
  static const defaultLanguageCode = 'en';
  static const defaultIsoCountryCode = 'EN';
  static const alternativeLanguageCode = 'vi';
  static const alternativeIsoCountryCode = 'VN';

  final defaultLocale = const Locale(
    defaultLanguageCode,
    defaultIsoCountryCode,
  );
  final alternativeLocale = const Locale(
    alternativeLanguageCode,
    alternativeIsoCountryCode,
  );

  //* Immutable
  late final styles = AppTextStyles();
  late final theme = AppColorStyles();
  late final times = AppTimes();
}
