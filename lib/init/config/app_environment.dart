import 'package:gen/gen.dart';

/// Application environment manager class
final class AppEnvironment {
  AppEnvironment.setup() {
    _config = Env();
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
