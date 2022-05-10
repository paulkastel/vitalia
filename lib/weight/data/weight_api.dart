import 'package:dio/dio.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/reward/domain/reward_dto.dart';

class WeightApi {
  WeightApi(this._api);

  final Dio _api;

  Future<ChallengeDto> finishWeightingChallenge(double weight) async {
    await _api.request<dynamic>('/wyzwania');
    return ChallengeDto(
      name: 'Moje pierwsze ważenie',
      rewardDto: RewardDto(
        coins: 100,
        message:
            'Brawo! Regularne aktualizowanie Twojej wagi pozwoli Ci śledzić postępy oraz odpowiednio dopasować wartość kaloryczna posiłków w aplikacji.',
      ),
    );
  }
}
