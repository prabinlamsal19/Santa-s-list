import 'package:injectable/injectable.dart';

import '../../core/base/env.dart';
import '../../core/di/injector.dart';
import '../routes/app_router.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();
}
