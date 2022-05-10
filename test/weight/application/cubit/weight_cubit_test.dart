import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/reward/domain/reward_dto.dart';
import 'package:vitalia/weight/application/cubit/weight_cubit.dart';
import 'package:vitalia/weight/application/weight_repository.dart';

class MockWeightRepository extends Mock implements WeightRepository {}

void main() {
  late WeightCubit testedCubit;
  late MockWeightRepository mockRepository;

  final exampleData = ChallengeDto(
    name: 'My first challenge',
    rewardDto: RewardDto(coins: 100, message: 'Good job!'),
  );

  setUpAll(() {
    mockRepository = MockWeightRepository();
  });

  setUp(() {
    testedCubit = WeightCubit(mockRepository);
  });

  tearDown(() {
    testedCubit.close();
  });

  blocTest<WeightCubit, WeightState>(
    'should emit loading and success state when happy path',
    build: () {
      when(() => mockRepository.finishWeightingChallenge('98.0')).thenAnswer(
        (_) async => exampleData,
      );
      return testedCubit;
    },
    act: (cubit) => cubit.onSaved('98.0'),
    expect: () => [WeightState.loading(), WeightState.success(exampleData)],
    verify: (cubit) {
      verify(() => mockRepository.finishWeightingChallenge('98.0'));
    },
  );
}
