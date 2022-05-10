import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vitalia/commons/constants/app_asset.dart';

class Background extends StatelessWidget {
  const Background({this.color = Colors.white, Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: color,
      child: SvgPicture.asset(
        AppAsset.scaffoldBackground,
        fit: BoxFit.fill,
        color: Colors.white.withOpacity(0.3),
        colorBlendMode: BlendMode.exclusion,
      ),
    );
  }
}
