import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vitalia/commons/constants/app_asset.dart';
import 'package:vitalia/commons/constants/app_color.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';
import 'package:vitalia/commons/widget/background.dart';
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/reward/application/share_service.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';

class RewardPage extends StatelessWidget {
  const RewardPage(this._challengeDto, {Key? key}) : super(key: key);

  final ChallengeDto _challengeDto;

  void _onClosePressed(BuildContext context) {
    return Navigator.pop(context);
  }

  Future<void> _onSharePressed(ChallengeDto challenge) {
    return ShareService.shareRewardFrom(challenge);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: Background(color: AppColor.yellowWhite),
            ),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: AppDimen.size2XL),
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => _onClosePressed(context),
                    icon: const Icon(Icons.close),
                  ),
                ),
                Text(
                  _challengeDto.name,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SvgPicture.asset(
                  AppAsset.scaleBadgeNoGlare,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppDimen.size2XL),
                  child: Text(
                    _challengeDto.rewardDto.message,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Za ukończenie tego wyzwania zdobywasz', textAlign: TextAlign.center),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: AppDimen.sizeS),
                      child: SvgPicture.asset(
                        AppAsset.coin,
                        width: 25,
                      ),
                    ),
                    Text(
                      _challengeDto.rewardDto.coins.toString(),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'monet',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDimen.size3XL * 4),
                  child: ElevatedButton(
                    onPressed: () => _onClosePressed(context),
                    child: Text(I10n.of(context).thanks),
                  ),
                ),
                TextButton(
                  onPressed: () => _onSharePressed(_challengeDto),
                  child: Text(I10n.of(context).share),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
