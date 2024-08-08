import 'dart:io';

import 'package:backend/utils/exceptions/http_exception/http_exception.dart';

/// {@template not_found_exception}
/// This is the class for the not found exception (404)
/// {@endtemplate}
class NotFoundException extends HttpException {
  /// {@macro not_found_exception}
  const NotFoundException(String message) : super(message, HttpStatus.notFound);
}
