import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/weight/application/weight_repository.dart';

part 'weight_state.dart';

class WeightCubit extends Cubit<WeightState> {
  WeightCubit(this._repository) : super(WeightInitial());

  final WeightRepository _repository;

  Future<void> onSaved(String weight) async {
    try {
      emit(WeightLoading());
      final challenge = await _repository.finishWeightingChallenge(weight);
      emit(WeightSuccess(challenge));
    } on Exception catch (ex) {
      emit(WeightErorr(ex));
    }
  }
}
