import 'package:flutter/material.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';
import 'package:vitalia/home/presentation/account_balance.dart';
import 'package:vitalia/home/presentation/profile_level.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({this.onProfileTap, Key? key}) : super(key: key);

  final VoidCallback? onProfileTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimen.sizeL),
      child: InkWell(
        onTap: onProfileTap,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 20,
              child: Column(
                children: const [
                  AccountBalance(100),
                  ProfileLevel(1),
                ],
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 35,
              backgroundImage: NetworkImage(
                'https://s3-eu-west-2.amazonaws.com/kmag/articles/61d8672bb3ff2476a9521581/article-main-desktop/gal-gadot.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
