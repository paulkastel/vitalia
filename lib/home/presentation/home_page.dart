import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitalia/commons/constants/app_route.dart';
import 'package:vitalia/commons/di/locator.dart';
import 'package:vitalia/commons/widget/background.dart';
import 'package:vitalia/home/presentation/profile_info.dart';
import 'package:vitalia/weight/application/cubit/weight_cubit.dart';
import 'package:vitalia/weight/presentation/weight_input_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> _onProfilePicutreTap(BuildContext context) {
    return Navigator.pushNamed(context, AppRoute.profile);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: Background(),
            ),
            BlocProvider(
              create: (context) => locator.get<WeightCubit>(),
              child: ListView(
                children: [
                  ProfileInfo(onProfileTap: () => _onProfilePicutreTap(context)),
                  const WeightInputCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
