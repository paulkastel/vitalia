// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardDto _$RewardDtoFromJson(Map<String, dynamic> json) {
  return _RewardDto.fromJson(json);
}

/// @nodoc
mixin _$RewardDto {
  String get message => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardDtoCopyWith<RewardDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardDtoCopyWith<$Res> {
  factory $RewardDtoCopyWith(RewardDto value, $Res Function(RewardDto) then) =
      _$RewardDtoCopyWithImpl<$Res>;
  $Res call({String message, int coins});
}

/// @nodoc
class _$RewardDtoCopyWithImpl<$Res> implements $RewardDtoCopyWith<$Res> {
  _$RewardDtoCopyWithImpl(this._value, this._then);

  final RewardDto _value;
  // ignore: unused_field
  final $Res Function(RewardDto) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? coins = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RewardDtoCopyWith<$Res> implements $RewardDtoCopyWith<$Res> {
  factory _$$_RewardDtoCopyWith(_$_RewardDto value, $Res Function(_$_RewardDto) then) =
      __$$_RewardDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message, int coins});
}

/// @nodoc
class __$$_RewardDtoCopyWithImpl<$Res> extends _$RewardDtoCopyWithImpl<$Res>
    implements _$$_RewardDtoCopyWith<$Res> {
  __$$_RewardDtoCopyWithImpl(_$_RewardDto _value, $Res Function(_$_RewardDto) _then)
      : super(_value, (v) => _then(v as _$_RewardDto));

  @override
  _$_RewardDto get _value => super._value as _$_RewardDto;

  @override
  $Res call({
    Object? message = freezed,
    Object? coins = freezed,
  }) {
    return _then(_$_RewardDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardDto implements _RewardDto {
  const _$_RewardDto({required this.message, required this.coins});

  factory _$_RewardDto.fromJson(Map<String, dynamic> json) => _$$_RewardDtoFromJson(json);

  @override
  final String message;
  @override
  final int coins;

  @override
  String toString() {
    return 'RewardDto(message: $message, coins: $coins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardDto &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.coins, coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(coins));

  @JsonKey(ignore: true)
  @override
  _$$_RewardDtoCopyWith<_$_RewardDto> get copyWith =>
      __$$_RewardDtoCopyWithImpl<_$_RewardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardDtoToJson(this);
  }
}

abstract class _RewardDto implements RewardDto {
  const factory _RewardDto({required final String message, required final int coins}) =
      _$_RewardDto;

  factory _RewardDto.fromJson(Map<String, dynamic> json) = _$_RewardDto.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  int get coins => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RewardDtoCopyWith<_$_RewardDto> get copyWith => throw _privateConstructorUsedError;
}
