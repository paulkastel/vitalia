// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChallengeDto _$$_ChallengeDtoFromJson(Map<String, dynamic> json) => _$_ChallengeDto(
      name: json['name'] as String,
      rewardDto: RewardDto.fromJson(json['rewardDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChallengeDtoToJson(_$_ChallengeDto instance) => <String, dynamic>{
      'name': instance.name,
      'rewardDto': instance.rewardDto,
    };
