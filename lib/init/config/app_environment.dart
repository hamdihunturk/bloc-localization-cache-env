import 'package:teamup/init/config/app_configration.dart';
import 'package:teamup/init/config/gen/dev_env.dart';
import 'package:teamup/init/config/gen/prod_env.dart';
import 'package:flutter/foundation.dart';

/// Application environment manager class
final class AppEnvironment {
  AppEnvironment.setup() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;
}

/// Get application environment items
enum AppEnvironmentItems {
  baseUrl,
  mapApiKey;

  String get value {
    switch (this) {
      case AppEnvironmentItems.baseUrl:
        return AppEnvironment._config.baseUrl;
      case AppEnvironmentItems.mapApiKey:
        return AppEnvironment._config.mapApiKey;
    }
  }
}
