import 'package:flutter/material.dart';
import 'package:vitalia/commons/constants/app_color.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';
import 'package:vitalia/generated/l10n.dart';

class ProfileLevel extends StatelessWidget {
  const ProfileLevel(this._level, {Key? key}) : super(key: key);
  final int _level;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: 130,
      padding: const EdgeInsets.all(AppDimen.sizeS),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.pinkF084A1,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: AppDimen.sizeXL),
        child: Text(
          I10n.of(context).yourLevel(_level).toUpperCase(),
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
