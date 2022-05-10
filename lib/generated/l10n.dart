// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Profile`
  String get yourProfile {
    return Intl.message(
      'Profile',
      name: 'yourProfile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Level {level}`
  String yourLevel(Object level) {
    return Intl.message(
      'Level $level',
      name: 'yourLevel',
      desc: '',
      args: [level],
    );
  }

  /// `Congratulations`
  String get congrats {
    return Intl.message(
      'Congratulations',
      name: 'congrats',
      desc: '',
      args: [],
    );
  }

  /// `You just completed {challengeName}`
  String finishedChallengeConfirm(Object challengeName) {
    return Intl.message(
      'You just completed $challengeName',
      name: 'finishedChallengeConfirm',
      desc: '',
      args: [challengeName],
    );
  }

  /// `Collect reward!`
  String get collectReward {
    return Intl.message(
      'Collect reward!',
      name: 'collectReward',
      desc: '',
      args: [],
    );
  }

  /// `Thanks!`
  String get thanks {
    return Intl.message(
      'Thanks!',
      name: 'thanks',
      desc: '',
      args: [],
    );
  }

  /// `Share!`
  String get share {
    return Intl.message(
      'Share!',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Weight yourself`
  String get weightYourself {
    return Intl.message(
      'Weight yourself',
      name: 'weightYourself',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Enter current body mass :)`
  String get enterBodyMass {
    return Intl.message(
      'Enter current body mass :)',
      name: 'enterBodyMass',
      desc: '',
      args: [],
    );
  }

  /// `My first weighting`
  String get firstWeightChallengeTitle {
    return Intl.message(
      'My first weighting',
      name: 'firstWeightChallengeTitle',
      desc: '',
      args: [],
    );
  }

  /// `I just finished {challengeName} and got {coins} coins at http://www.vitalia.pl/`
  String shareContent(Object challengeName, Object coins) {
    return Intl.message(
      'I just finished $challengeName and got $coins coins at http://www.vitalia.pl/',
      name: 'shareContent',
      desc: '',
      args: [challengeName, coins],
    );
  }

  /// `Nice! Tracking your weight will help measure your progress and balance diet with Vitalia app.`
  String get firstWeightChallengeMsg {
    return Intl.message(
      'Nice! Tracking your weight will help measure your progress and balance diet with Vitalia app.',
      name: 'firstWeightChallengeMsg',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
