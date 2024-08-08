// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "communication_error": MessageLookupByLibrary.simpleMessage(
            "There was an error with our communication with the servers."),
        "dislike": MessageLookupByLibrary.simpleMessage("This is not Funny!"),
        "like": MessageLookupByLibrary.simpleMessage("This is Funny!"),
        "loadingText": MessageLookupByLibrary.simpleMessage("Loading..."),
        "noInternetConnection": MessageLookupByLibrary.simpleMessage(
            "No internet connection. Please try again later."),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "server_failure":
            MessageLookupByLibrary.simpleMessage("Server failure encountered."),
        "somethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "somethingWentWrongAgain": MessageLookupByLibrary.simpleMessage(
            "Something went wrong!! Please try again."),
        "somethingWentWrongTryAgain": MessageLookupByLibrary.simpleMessage(
            "Đã xảy ra lỗi. Vui lòng thử lại"),
        "thatsAllFolks": MessageLookupByLibrary.simpleMessage(
            "That\'s all the jokes for today! Come back another day!"),
        "unauthenticated_error":
            MessageLookupByLibrary.simpleMessage("Unauthenticated error")
      };
}
