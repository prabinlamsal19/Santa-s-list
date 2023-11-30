import 'package:injectable/injectable.dart';

import '../routes/app_router.dart';

@module
abstract class RegisterModules {
  @singleton
  AppRouter get router => AppRouter();
}
