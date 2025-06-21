import 'package:nisha1/src/app/presentation/bloc/localization/localization_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nisha1/l10n/l10n.dart';
import 'package:nisha1/src/core/constants/app_constants.dart';
import 'package:nisha1/src/core/di/injection.dart';
import 'package:nisha1/src/core/helpers/theme_helper.dart';
import 'package:nisha1/src/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nisha1/src/features/home/presentation/bloc/home_cubit.dart';
import 'package:talker_flutter/talker_flutter.dart';

final talker = TalkerFlutter.init();
final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt<LocalizationBloc>()
            ..add(const LocalizationEvent.getLanguage()),
        ),
        BlocProvider(
          create: (context) => getIt<HomeCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(320, 710),
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            title: AppConstants.nisha1,
            scaffoldMessengerKey: scaffoldKey,
            routerConfig: _router.config(),
            debugShowCheckedModeBanner: false,
            theme: getApplicationTheme(context),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder:
                (context, child) =>
                TalkerWrapper(
                  talker: talker,
                  child: Overlay(
                    initialEntries: [
                      OverlayEntry(
                        builder: (context) => child!,
                        maintainState: true,
                        opaque: true,
                      ),
                    ],
                  ),
                ),
          );
        },
      ),
    );
  }
}
