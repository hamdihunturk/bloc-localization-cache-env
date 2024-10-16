import 'package:teamup/init/config/app_configration.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

/// Production environment variables
@Envied(obfuscate: true, path: "assets/env/.dev.env")
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv.baseUrl;

  @EnviedField(varName: 'MAP_API_KEY')
  static final String _mapApiKey = _DevEnv.mapApiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get mapApiKey => _mapApiKey;
}
