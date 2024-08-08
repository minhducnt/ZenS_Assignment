import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:joke_app/app/data/services/common/logger_service.dart';
import 'package:joke_app/app/global/utils/config.dart';

/// Global instances
final $r = Get.put(AppConfig());
final $log = Get.put(LoggerService());
final $network = Get.put(InternetConnection());
