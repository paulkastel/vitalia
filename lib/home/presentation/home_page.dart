import 'package:flutter/material.dart';
import 'package:vitalia/commons/di/locator.dart';
import 'package:vitalia/commons/widget/background.dart';
import 'package:vitalia/home/presentation/profile_info.dart';
import 'package:vitalia/weight/application/cubit/weight_cubit.dart';
import 'package:vitalia/weight/presentation/weight_input_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Background(),
            ),
            BlocProvider(
              create: (context) => locator.get<WeightCubit>(),
              child: ListView(
                children: [
                  const ProfileInfo(),
                  WeightInputCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
