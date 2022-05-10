import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vitalia/commons/di/locator.dart';
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/weight/application/cubit/weight_cubit.dart';
import 'package:vitalia/weight/presentation/weight_input_card.dart';

class MockWeightCubit extends MockCubit<WeightState> implements WeightCubit {}

void main() {
  late Widget testedWidget;

  setUpAll(() async {
    await I10n.load(const Locale('pl'));
    await locator.reset();
    locator.registerSingleton<WeightCubit>(MockWeightCubit());
  });

  setUp(() {
    testedWidget = MaterialApp(
      localizationsDelegates: const [
        I10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: I10n.delegate.supportedLocales,
      home: BlocProvider(
        create: (context) => locator.get<WeightCubit>(),
        child: const WeightInputCard(),
      ),
    );
  });

  testWidgets('should find Card, TextField and no save button when state is initial',
      (tester) async {
    when(() => locator.get<WeightCubit>().state).thenReturn(const WeightState.initial());
    await tester.pumpWidget(testedWidget);
    await tester.pump();
    expect(find.byType(Card), findsOneWidget);
    expect(
      find.descendant(of: find.byType(Flexible), matching: find.byType(TextField)),
      findsOneWidget,
    );
    expect(find.widgetWithText(ElevatedButton, 'ZAPISZ'), findsNothing);
  });
}
