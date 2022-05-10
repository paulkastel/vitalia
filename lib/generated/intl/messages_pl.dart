// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static String m0(challengeName) =>
      "Właśnie ukończyłaś wyzwanie ${challengeName}";

  static String m1(challengeName, coins) =>
      "Hej ukończyłam ${challengeName} i zdobyłam ${coins} monet na http://www.vitalia.pl/";

  static String m2(level) => "Poziom ${level}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "collectReward":
            MessageLookupByLibrary.simpleMessage("Odbieram nagrodę!"),
        "congrats": MessageLookupByLibrary.simpleMessage("Gratulacje"),
        "enterBodyMass": MessageLookupByLibrary.simpleMessage(
            "Wpisz aktualną masę ciała :)"),
        "finishedChallengeConfirm": m0,
        "firstWeightChallengeMsg": MessageLookupByLibrary.simpleMessage(
            "Brawo! Regularne aktualizowanie Twojej wagi pozwoli Ci śledzić postępy oraz odpowiednio dopasować wartość kaloryczna posiłków w aplikacji."),
        "firstWeightChallengeTitle":
            MessageLookupByLibrary.simpleMessage("Moje pierwsze ważenie"),
        "save": MessageLookupByLibrary.simpleMessage("Zapisz"),
        "settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "share": MessageLookupByLibrary.simpleMessage("Udostępnij!"),
        "shareContent": m1,
        "thanks": MessageLookupByLibrary.simpleMessage("Dzięki!"),
        "weightYourself": MessageLookupByLibrary.simpleMessage("Zważ się"),
        "yourLevel": m2,
        "yourProfile": MessageLookupByLibrary.simpleMessage("Twój profil")
      };
}
