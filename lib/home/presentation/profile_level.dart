import 'package:flutter/material.dart';
import 'package:vitalia/commons/constants/app_color.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';

class ProfileLevel extends StatelessWidget {
  const ProfileLevel(this._level, {Key? key}) : super(key: key);
  final int _level;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      width: 130,
      padding: EdgeInsets.all(AppDimen.sizeS),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.pinkF084A1,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: AppDimen.sizeXL),
        child: Text(
          'Poziom $_level'.toUpperCase(),
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
