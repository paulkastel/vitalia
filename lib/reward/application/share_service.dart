import 'package:share_plus/share_plus.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';

class ShareService {
  static Future<void> shareRewardFrom(ChallengeDto challenge) {
    return Share.share(
      'Hej ukończyłem ${challenge.name} i zdobyłem ${challenge.rewardDto.coins} monet na http://www.vitalia.pl/',
    );
  }
}
