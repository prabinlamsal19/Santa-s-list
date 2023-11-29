import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/app/app.dart';
import 'src/core/di/injector.dart';
import 'src/core/logging/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onChange(BlocBase bloc, Change change) async {
    super.onChange(bloc, change);
    logger.d('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({
  Function()? intRootLogger,
}) async {
  Bloc.observer = AppBlocObserver();

  GoogleFonts.config.allowRuntimeFetching = false;

  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details.exceptionAsString());
  };

  _addFontsLicenses();

  await configureInjection();

  /// Runs error on own error zone
  Future.delayed(const Duration(milliseconds: 400), () {
    FlutterNativeSplash.remove();
    return runApp(App());
  });
}

void _addFontsLicenses() {
  LicenseRegistry.addLicense(() async* {
    final plusJakartaSansLicense =
        await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], plusJakartaSansLicense);
  });
}
