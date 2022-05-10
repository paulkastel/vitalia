// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'challenge_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChallengeDto _$ChallengeDtoFromJson(Map<String, dynamic> json) {
  return _ChallengeDto.fromJson(json);
}

/// @nodoc
mixin _$ChallengeDto {
  String get name => throw _privateConstructorUsedError;
  RewardDto get rewardDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeDtoCopyWith<ChallengeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeDtoCopyWith<$Res> {
  factory $ChallengeDtoCopyWith(ChallengeDto value, $Res Function(ChallengeDto) then) =
      _$ChallengeDtoCopyWithImpl<$Res>;
  $Res call({String name, RewardDto rewardDto});

  $RewardDtoCopyWith<$Res> get rewardDto;
}

/// @nodoc
class _$ChallengeDtoCopyWithImpl<$Res> implements $ChallengeDtoCopyWith<$Res> {
  _$ChallengeDtoCopyWithImpl(this._value, this._then);

  final ChallengeDto _value;
  // ignore: unused_field
  final $Res Function(ChallengeDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rewardDto = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rewardDto: rewardDto == freezed
          ? _value.rewardDto
          : rewardDto // ignore: cast_nullable_to_non_nullable
              as RewardDto,
    ));
  }

  @override
  $RewardDtoCopyWith<$Res> get rewardDto {
    return $RewardDtoCopyWith<$Res>(_value.rewardDto, (value) {
      return _then(_value.copyWith(rewardDto: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChallengeDtoCopyWith<$Res> implements $ChallengeDtoCopyWith<$Res> {
  factory _$$_ChallengeDtoCopyWith(_$_ChallengeDto value, $Res Function(_$_ChallengeDto) then) =
      __$$_ChallengeDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, RewardDto rewardDto});

  @override
  $RewardDtoCopyWith<$Res> get rewardDto;
}

/// @nodoc
class __$$_ChallengeDtoCopyWithImpl<$Res> extends _$ChallengeDtoCopyWithImpl<$Res>
    implements _$$_ChallengeDtoCopyWith<$Res> {
  __$$_ChallengeDtoCopyWithImpl(_$_ChallengeDto _value, $Res Function(_$_ChallengeDto) _then)
      : super(_value, (v) => _then(v as _$_ChallengeDto));

  @override
  _$_ChallengeDto get _value => super._value as _$_ChallengeDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? rewardDto = freezed,
  }) {
    return _then(_$_ChallengeDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rewardDto: rewardDto == freezed
          ? _value.rewardDto
          : rewardDto // ignore: cast_nullable_to_non_nullable
              as RewardDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChallengeDto implements _ChallengeDto {
  const _$_ChallengeDto({required this.name, required this.rewardDto});

  factory _$_ChallengeDto.fromJson(Map<String, dynamic> json) => _$$_ChallengeDtoFromJson(json);

  @override
  final String name;
  @override
  final RewardDto rewardDto;

  @override
  String toString() {
    return 'ChallengeDto(name: $name, rewardDto: $rewardDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengeDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rewardDto, rewardDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rewardDto));

  @JsonKey(ignore: true)
  @override
  _$$_ChallengeDtoCopyWith<_$_ChallengeDto> get copyWith =>
      __$$_ChallengeDtoCopyWithImpl<_$_ChallengeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChallengeDtoToJson(this);
  }
}

abstract class _ChallengeDto implements ChallengeDto {
  const factory _ChallengeDto({required final String name, required final RewardDto rewardDto}) =
      _$_ChallengeDto;

  factory _ChallengeDto.fromJson(Map<String, dynamic> json) = _$_ChallengeDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  RewardDto get rewardDto => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengeDtoCopyWith<_$_ChallengeDto> get copyWith => throw _privateConstructorUsedError;
}
