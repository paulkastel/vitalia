import 'package:dio/dio.dart';
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/reward/domain/reward_dto.dart';

class WeightApi {
  WeightApi(this._api);

  final Dio _api;

  Future<ChallengeDto> finishWeightingChallenge() async {
    await _api.request<dynamic>('/wyzwania');
    return ChallengeDto(
      name: I10n.current.firstWeightChallengeTitle,
      rewardDto: RewardDto(coins: 100, message: I10n.current.firstWeightChallengeMsg),
    );
  }
}
