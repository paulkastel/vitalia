import 'package:equatable/equatable.dart';

class RewardDto extends Equatable {
  RewardDto({
    required this.message,
    required this.coins,
  });

  factory RewardDto.fromMap(Map<String, dynamic> map) {
    return RewardDto(
      message: map['message'] ?? '',
      coins: map['coins']?.toInt() ?? 0,
    );
  }
  final String message;
  final int coins;

  @override
  List<Object> get props => [message, coins];

  RewardDto copyWith({
    String? message,
    int? coins,
  }) {
    return RewardDto(
      message: message ?? this.message,
      coins: coins ?? this.coins,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'coins': coins,
    };
  }
}
