import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:iclick_timesheet/core/di/injection.config.config.dart';
import 'package:iclick_timesheet/core/enum/app_environment.dart';
import 'package:injectable/injectable.dart';

final GetIt sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies({required AppEnv env}) async {
  final envFilePath = 'env/.env.${env.name}';
  await dotenv.load(fileName: envFilePath);

  sl.init(environment: env.name);
}
