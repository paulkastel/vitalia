import 'package:equatable/equatable.dart';

import 'package:vitalia/reward/domain/reward_dto.dart';

class ChallengeDto extends Equatable {
  ChallengeDto({
    required this.name,
    required this.rewardDto,
  });

  factory ChallengeDto.fromMap(Map<String, dynamic> map) {
    return ChallengeDto(
      name: map['name'] ?? '',
      rewardDto: RewardDto.fromMap(map['rewardDto']),
    );
  }

  final String name;
  final RewardDto rewardDto;

  @override
  List<Object> get props => [name, rewardDto];

  @override
  String toString() => 'ChallengeDto(name: $name, rewardDto: $rewardDto)';

  ChallengeDto copyWith({
    String? name,
    RewardDto? rewardDto,
  }) {
    return ChallengeDto(
      name: name ?? this.name,
      rewardDto: rewardDto ?? this.rewardDto,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'rewardDto': rewardDto.toMap(),
    };
  }
}
