import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:iclick_timesheet/core/enum/app_environment.dart';
import 'package:injectable/injectable.dart';


abstract class AppConfig {
  /// App API URL
  String get apiUrl;

  /// Supabase ANON KEY
  String get anonKey;

  /// App Name
  String get appName;
}

/// The implementation for the development environment.
@Singleton(as: AppConfig, env: ['dev'])
class DevConfig implements AppConfig {
  @override
  String get apiUrl => dotenv.env['API_URL'] ?? '';

  @override
  String get anonKey => dotenv.env['ANON_KEY'] ?? '';

  @override
  String get appName => dotenv.env['APP_NAME'] ?? _getDefaultAppName(AppEnv.dev);
}

/// The implementation for the QA environment.
@Singleton(as: AppConfig, env: ['qa'])
class QaConfig implements AppConfig {
  @override
  String get apiUrl => dotenv.env['API_URL'] ?? '';

  @override
  String get anonKey => dotenv.env['ANON_KEY'] ?? '';

  @override
  String get appName => dotenv.env['APP_NAME'] ?? _getDefaultAppName(AppEnv.qa);
}

/// The implementation for the production environment.
@Singleton(as: AppConfig, env: ['prod'])
class ProdConfig implements AppConfig {
  @override
  String get apiUrl => dotenv.env['API_URL'] ?? '';

  @override
  String get anonKey => dotenv.env['ANON_KEY'] ?? '';

  @override
  String get appName => dotenv.env['APP_NAME'] ?? _getDefaultAppName(AppEnv.prod);
}

/// Fallback default app name based on environment
String _getDefaultAppName(AppEnv env) {
  switch (env) {
    case AppEnv.dev:
      return 'iClick Timesheet Dev';
    case AppEnv.qa:
      return 'iClick Timesheet QA';
    case AppEnv.prod:
      return 'iClick Timesheet';
  }
}
