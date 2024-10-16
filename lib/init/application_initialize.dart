import 'dart:async';
import 'package:teamup/init/config/app_environment.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
final class ApplicationInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();

    await runZonedGuarded<Future<void>>(
      _initialize,
      (error, stack) {
        debugPrint(error as String?);
      },
    );
  }

  Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    //  Splash// await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      debugPrint(details.exceptionAsString());
    };

    _productEnvironmentWithContainer();
  }

  void _productEnvironmentWithContainer() {
    AppEnvironment.setup();

    //
    // ProductContainer.setup();
  }
}
