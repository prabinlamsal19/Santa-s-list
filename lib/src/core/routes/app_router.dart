import 'package:auto_route/auto_route.dart';

import 'app_router.dart';

export 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: AddKid.page),
    AutoRoute(page: ViewList.page, initial: true),
  ];
}
