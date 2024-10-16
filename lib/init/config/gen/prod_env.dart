import 'package:envied/envied.dart';

import '../app_configration.dart';

part 'prod_env.g.dart';

/// Production environment variables
@Envied(obfuscate: true, path: "assets/env/.prod.env")
final class ProdEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv.baseUrl;

  @EnviedField(varName: 'MAP_API_KEY')
  static final String _mapApiKey = _ProdEnv.mapApiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get mapApiKey => _mapApiKey;
}
