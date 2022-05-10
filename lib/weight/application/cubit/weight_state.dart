part of 'weight_cubit.dart';

abstract class WeightState extends Equatable {
  const WeightState();

  @override
  List<Object> get props => [];
}

class WeightInitial extends WeightState {}

class WeightSuccess extends WeightState {
  WeightSuccess(this.challengeDto);

  final ChallengeDto challengeDto;

  @override
  List<Object> get props => [challengeDto];
}

class WeightLoading extends WeightState {}

class WeightErorr extends WeightState {
  WeightErorr(this.error);

  final Exception error;

  @override
  List<Object> get props => [error];
}
