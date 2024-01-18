import 'package:flutter/material.dart';
import 'core/app.dart';
import 'presentation/state/bloc/service_locator.dart';



void main() {
  serviceLocatorInit();
  runApp(const MyApp());
}
