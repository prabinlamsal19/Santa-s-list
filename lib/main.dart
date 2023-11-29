import 'dart:async';

import 'package:app_for_santa/src/core/logging/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';

import 'bootstrap.dart';

void main() => runZonedGuarded(() async {
      final binding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: binding);
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

      bootstrap(
        intRootLogger: _initRootLogger,
      );
    }, (Object error, StackTrace stackTrace) => logger.e(error.toString()));
/// Initialize top level root Logger
_initRootLogger() {
  Logger.level = Level.all;
}
