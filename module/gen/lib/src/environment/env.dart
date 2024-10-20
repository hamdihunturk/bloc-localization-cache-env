import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configration.dart';

part 'env.g.dart';

/// Production environment variables
@Envied(obfuscate: true, path: "assets/env/.env")
final class Env implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _Env._baseUrl;

  @EnviedField(varName: 'MAP_API_KEY')
  static final String _mapApiKey = _Env._mapApiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get mapApiKey => _mapApiKey;
}
