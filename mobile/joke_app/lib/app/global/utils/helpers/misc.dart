import 'package:get/get.dart';

bool isNullOrEmpty(dynamic input) {
  var localInput = input;
  if (localInput is String) localInput = localInput.trim();
  return GetUtils.isNullOrBlank(localInput) ?? true;
}

String isStringEmpty(String? input, {String? errorMessage}) {
  if (isNullOrEmpty(input)) return errorMessage ?? '';
  return input ?? '';
}
