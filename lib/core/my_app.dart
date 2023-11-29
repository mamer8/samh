import 'package:samh_task/core/utils/styles/theme_manager.dart';

import '../Features/Splash/presentation/views/splash_view.dart';
import 'app_export.dart';
import 'utils/language/app_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context, designSize: const Size(360, 690));
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, child) {
        return

          MultiBlocProvider(
            providers: [
              BlocProvider(create: (BuildContext context) => HomeCubit()),
              BlocProvider(create: (BuildContext context) => FlightsCubit()),
            ],
            child: BlocConsumer<HomeCubit, HomeStates>(
              listener: (context, state) {},
              builder: (context, state) {
                return MaterialApp(
                  title: 'Samh App',
                  theme: getApplicationTheme(),
                  localizationsDelegates: const [
                    AppLocale.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale("ar", ""),
                    Locale("en", ""),
                  ],
                  locale: HomeCubit.get(context).isEnglish
                      ? const Locale("en", "")
                      : const Locale("ar", ""),
                  debugShowCheckedModeBanner: false,
                  home: const SplashView(),
                );
              },
            ));
      },
    );
  }
}
