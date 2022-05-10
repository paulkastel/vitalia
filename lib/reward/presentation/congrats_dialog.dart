import 'package:flutter/material.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/commons/widget/background.dart';

class CongratsDialog extends StatelessWidget {
  const CongratsDialog(this._challenge, {Key? key}) : super(key: key);

  final ChallengeDto _challenge;

  void _onCollectRewardPressed(BuildContext context) async {
    return Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(AppDimen.size3XL),
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimen.size2XL),
              child: Background(color: Theme.of(context).dialogTheme.backgroundColor!),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: AppDimen.sizeXL, horizontal: AppDimen.size3XL),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Gratulacje!'.toUpperCase(),
                    style: Theme.of(context).dialogTheme.titleTextStyle),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppDimen.sizeL),
                  child: Text(
                    'Właśnie ukończyłaś wyzwanie ${_challenge.name}',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onCollectRewardPressed(context),
                  child: Text('Odbieram nagrodę'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
