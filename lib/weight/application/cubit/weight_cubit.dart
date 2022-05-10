import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/weight/application/weight_repository.dart';

part 'weight_state.dart';
part 'weight_cubit.freezed.dart';

class WeightCubit extends Cubit<WeightState> {
  WeightCubit(this._repository) : super(const WeightState.initial());

  final WeightRepository _repository;

  Future<void> onSaved(String weight) async {
    try {
      emit(WeightState.loading());
      final challenge = await _repository.finishWeightingChallenge(weight);
      emit(WeightState.success(challenge));
    } on Exception catch (ex) {
      emit(WeightState.error(ex));
    }
  }
}
