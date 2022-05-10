import 'package:flutter/material.dart';
import 'package:vitalia/commons/widget/background.dart';
import 'package:vitalia/home/presentation/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Twój profil'),
        ),
        body: Stack(
          children: [
            Background(),
            ListView(
              children: [
                ProfileInfo(),
                Text(
                  'Ustawienia',
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
