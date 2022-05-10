import 'package:share_plus/share_plus.dart';
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';

class ShareService {
  static Future<void> shareRewardFrom(ChallengeDto challenge) {
    return Share.share(
      I10n.current.shareContent(challenge.name, challenge.rewardDto.coins.toString()),
    );
  }
}
