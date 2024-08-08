// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("Hủy"),
        "communication_error": MessageLookupByLibrary.simpleMessage(
            "Đã xảy ra lỗi trong quá trình giao tiếp với các máy chủ"),
        "dislike":
            MessageLookupByLibrary.simpleMessage("Điều này không buồn cười!"),
        "like":
            MessageLookupByLibrary.simpleMessage("Điều này thật buồn cười!"),
        "loadingText": MessageLookupByLibrary.simpleMessage("Đang tải..."),
        "noInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Không có kết nối Internet. Vui lòng thử lại sau"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "server_failure":
            MessageLookupByLibrary.simpleMessage("Đã gặp sự cố máy chủ"),
        "somethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Đã xảy ra lỗi"),
        "somethingWentWrongAgain": MessageLookupByLibrary.simpleMessage(
            "Đã xảy ra lỗi!! Vui lòng thử lại"),
        "somethingWentWrongTryAgain": MessageLookupByLibrary.simpleMessage(
            "Đã xảy ra lỗi. Vui lòng thử lại"),
        "thatsAllFolks": MessageLookupByLibrary.simpleMessage(
            "Đó là tất cả những câu chuyện cười cho hôm nay! Hãy quay lại vào ngày khác!"),
        "unauthenticated_error":
            MessageLookupByLibrary.simpleMessage("Không xác thực được")
      };
}
