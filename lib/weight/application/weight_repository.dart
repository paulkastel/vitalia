import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/weight/data/weight_api.dart';

class WeightRepository {
  WeightRepository(this._weightApi);

  final WeightApi _weightApi;

  Future<ChallengeDto> finishWeightingChallenge(String weight) async {
    final parsedWeight = double.tryParse(weight);
    if (parsedWeight != null) {
      return _weightApi.finishWeightingChallenge();
    } else {
      throw Exception('Invalid weight');
    }
  }
}
