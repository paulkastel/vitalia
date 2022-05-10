import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_dto.freezed.dart';
part 'reward_dto.g.dart';

@freezed
class RewardDto with _$RewardDto {
  const factory RewardDto({
    required String message,
    required int coins,
  }) = _RewardDto;

  factory RewardDto.fromJson(Map<String, Object?> json) => _$RewardDtoFromJson(json);
}
