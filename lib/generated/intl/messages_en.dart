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

  static String m0(challengeName) => "You just completed ${challengeName}";

  static String m1(challengeName, coins) =>
      "I just finished ${challengeName} and got ${coins} coins at http://www.vitalia.pl/";

  static String m2(level) => "Level ${level}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "collectReward":
            MessageLookupByLibrary.simpleMessage("Collect reward!"),
        "congrats": MessageLookupByLibrary.simpleMessage("Congratulations"),
        "enterBodyMass":
            MessageLookupByLibrary.simpleMessage("Enter current body mass :)"),
        "finishedChallengeConfirm": m0,
        "firstWeightChallengeMsg": MessageLookupByLibrary.simpleMessage(
            "Nice! Tracking your weight will help measure your progress and balance diet with Vitalia app."),
        "firstWeightChallengeTitle":
            MessageLookupByLibrary.simpleMessage("My first weighting"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share": MessageLookupByLibrary.simpleMessage("Share!"),
        "shareContent": m1,
        "thanks": MessageLookupByLibrary.simpleMessage("Thanks!"),
        "weightYourself":
            MessageLookupByLibrary.simpleMessage("Weight yourself"),
        "yourLevel": m2,
        "yourProfile": MessageLookupByLibrary.simpleMessage("Profile")
      };
}
