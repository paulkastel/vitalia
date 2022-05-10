import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vitalia/commons/constants/app_color.dart';
import 'package:vitalia/commons/navigation/router.dart' as router;
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/home/presentation/home_page.dart';

class VitaliaApp extends StatelessWidget {
  const VitaliaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(color: AppColor.pinkF084A1),
        scaffoldBackgroundColor: Colors.white,
        cardTheme: CardTheme(
          elevation: 2,
          color: AppColor.pinkF084A1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white.withOpacity(0.71),
          suffixStyle: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 24),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        dialogTheme: const DialogTheme(
          backgroundColor: AppColor.yellowWhite,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColor.blueish4D6F7C,
            fontSize: 24,
          ),
          contentTextStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColor.blueish4D6F7C,
            fontSize: 15,
          ),
        ),
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColor.blueish4D6F7C,
            fontSize: 36,
          ),
          headline5: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 24),
          headline4: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 18),
          bodyText1: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 14),
          bodyText2: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColor.blueish4D6F7C,
            fontSize: 15,
          ),
          subtitle1: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 24),
          button: TextStyle(fontWeight: FontWeight.w800, color: Colors.white, fontSize: 13),
        ),
        iconTheme: const IconThemeData(color: AppColor.greyC4C4C4),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: AppColor.blueish4D6F7C,
            textStyle: const TextStyle(
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColor.pinkF084A1,
            onPrimary: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            shape: const StadiumBorder(),
          ),
        ),
      ),
      localizationsDelegates: const [
        I10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: I10n.delegate.supportedLocales,
      home: const HomePage(),
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
