import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:app_for_santa/src/features/view_list/domain/repositories/kid_repository.dart';
import 'package:app_for_santa/src/features/view_list/presentation/form_cubit/add_form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../../localization/generated/l10n.dart';
import '../../../core/di/injector.dart';
import '../../../core/routes/app_router.dart';
import '../../../core/themes/app_themes.dart';
import '../../../features/view_list/presentation/add_kid_cubit/add_kid_cubit.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddKidCubit(getIt<KidRepository>()),
        ),
        BlocProvider(
          create: (context) => AddFormCubit(),
        ),
      ],
      child: AdaptiveSizer(
        builder: (context) => GestureDetector(
          onTap: () {},
          child: MaterialApp.router(
            restorationScopeId: 'root',
            debugShowCheckedModeBanner: false,
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: AppTheme.lightTheme,
            supportedLocales: AppLocalizations.delegate.supportedLocales,
            builder: (context, child) => child!,
          ),
        ),
      ),
    );
  }
}
