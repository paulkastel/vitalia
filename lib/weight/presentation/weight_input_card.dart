import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitalia/commons/constants/app_dimen.dart';
import 'package:vitalia/commons/constants/app_route.dart';
import 'package:vitalia/reward/domain/challenge_dto.dart';
import 'package:vitalia/commons/constants/app_asset.dart';
import 'package:vitalia/commons/constants/app_color.dart';
import 'package:vitalia/reward/presentation/congrats_dialog.dart';
import 'package:vitalia/weight/application/cubit/weight_cubit.dart';

class WeightInputCard extends StatefulWidget {
  const WeightInputCard({Key? key}) : super(key: key);

  @override
  State<WeightInputCard> createState() => _WeightInputCardState();
}

class _WeightInputCardState extends State<WeightInputCard> {
  var _saveEnabled = false;
  final _weightTextController = TextEditingController();

  @override
  void dispose() {
    _weightTextController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _weightTextController.addListener(() {
      setState(() {
        _saveEnabled = _weightTextController.text.isNotEmpty;
      });
    });
  }

  Future<void> _saveWeight() async {
    return context.read<WeightCubit>().onSaved(_weightTextController.text);
  }

  Future<void> _showDialog(ChallengeDto challenge) async {
    await showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return CongratsDialog(challenge);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimen.sizeL),
      child: Card(
        child: Stack(
          children: [
            Positioned(
              top: 70,
              right: -60,
              child: CircleAvatar(
                backgroundColor: AppColor.pinkLightF8A5BB,
                radius: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppDimen.sizeL, top: AppDimen.size2XL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: AppDimen.sizeXL),
                        child: Text('Zważ się', style: Theme.of(context).textTheme.headline4),
                      ),
                      Spacer(),
                      BlocListener<WeightCubit, WeightState>(
                        listener: (context, state) async {
                          if (state is WeightSuccess) {
                            await _showDialog(state.challengeDto);
                            Navigator.pushNamed(
                              context,
                              AppRoute.reward,
                              arguments: state.challengeDto,
                            );
                          } else if (state is WeightErorr) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('This went wrong: ${state.error}')),
                            );
                          }
                        },
                        child: _saveEnabled
                            ? Padding(
                                padding: const EdgeInsets.only(right: AppDimen.sizeL),
                                child: ElevatedButton(
                                  style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                        minimumSize: MaterialStateProperty.all(Size(100, 30)),
                                        backgroundColor: MaterialStateProperty.all(
                                          AppColor.blueish469DB3,
                                        ),
                                      ),
                                  onPressed: _saveWeight,
                                  child: Text(
                                    'Zapisz'.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .button
                                        ?.copyWith(color: Colors.white),
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5 * AppDimen.size2XL),
                    child: Text(
                      'Wpisz aktualną masę ciała :)',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: TextField(
                          controller: _weightTextController,
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(counterText: ''),
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        AppAsset.scaleBadge,
                        width: 120,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
