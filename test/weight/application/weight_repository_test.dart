import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/reward/domain/reward_dto.dart';
import 'package:vitalia/weight/application/weight_repository.dart';
import 'package:vitalia/weight/data/weight_api.dart';

class MockWeightApi extends Mock implements WeightApi {}

void main() {
  late MockWeightApi apiMock;

  setUpAll(() async {
    await I10n.load(const Locale('en'));
  });
  setUp(() {
    apiMock = MockWeightApi();
  });

  test('should call $WeightApi once when finishing challenge', () async {
    //arrange
    final exampleData = ChallengeDto(
      name: I10n.current.firstWeightChallengeTitle,
      rewardDto: RewardDto(coins: 100, message: I10n.current.firstWeightChallengeMsg),
    );

    when(() => apiMock.finishWeightingChallenge()).thenAnswer((_) async => exampleData);

    //act
    final testedRepo = WeightRepository(apiMock);

    //assert
    expect(await testedRepo.finishWeightingChallenge('98.0'), exampleData);
    verify(() => apiMock.finishWeightingChallenge());
  });
}
