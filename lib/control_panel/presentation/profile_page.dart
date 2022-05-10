import 'package:flutter/material.dart';
import 'package:vitalia/commons/widget/background.dart';
import 'package:vitalia/generated/l10n.dart';
import 'package:vitalia/home/presentation/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(I10n.of(context).yourProfile),
        ),
        body: Stack(
          children: [
            const Background(),
            ListView(
              children: [
                const ProfileInfo(),
                Text(
                  I10n.of(context).settings,
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
