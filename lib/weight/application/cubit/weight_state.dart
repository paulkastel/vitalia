part of 'weight_cubit.dart';

@freezed
class WeightState with _$WeightState {
  const factory WeightState.error(Exception error) = _Error;

  const factory WeightState.initial() = _Initial;

  const factory WeightState.loading() = _Loading;

  const factory WeightState.success(ChallengeDto challengeDto) = _Success;
}
