import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vitalia/reward/domain/reward_dto.dart';

part 'challenge_dto.freezed.dart';
part 'challenge_dto.g.dart';

@freezed
class ChallengeDto with _$ChallengeDto {
  const factory ChallengeDto({
    required String name,
    required RewardDto rewardDto,
  }) = _ChallengeDto;

  factory ChallengeDto.fromJson(Map<String, Object?> json) => _$ChallengeDtoFromJson(json);
}
