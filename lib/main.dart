import 'package:flutter/material.dart';
import 'package:vitalia/commons/di/locator.dart';
import 'package:vitalia/vitalia_app.dart';

void main() {
  setupServiceLocator();
  runApp(const VitaliaApp());
}
