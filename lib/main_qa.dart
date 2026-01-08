import 'package:flutter/material.dart';
import 'my_app.dart';
import 'core/di/injection.config.dart';
import 'core/enum/app_environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(env: AppEnv.qa);

  runApp(const MyApp());
}

