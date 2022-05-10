import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:vitalia/commons/di/locator.dart';
import 'package:vitalia/vitalia_app.dart';

void main() {
  EquatableConfig.stringify = true;
  setupServiceLocator();
  runApp(const VitaliaApp());
}
