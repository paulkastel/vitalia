import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vitalia/commons/constants/app_asset.dart';
import 'package:vitalia/commons/constants/app_color.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance(this.coins, {Key? key}) : super(key: key);
  final int coins;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(AppDimen.sizeM),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: AppColor.greyC4C4C4,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 0.5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: AppDimen.sizeXL),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppAsset.coin, width: 20),
            const SizedBox(width: 5),
            Text(
              coins.toString(),
              style: Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
