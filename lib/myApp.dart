
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mudir/features/home/ui/homePage.dart';
import 'package:mudir/features/home/ui/homePageView.dart';
import 'core/utils/consts/app_strings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/home/ui/widgets/real_estate_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.sizeOf(context),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      ensureScreenSize: true,
      builder: (context, child) => MaterialApp(
        title: Kstrings.projectName,
        // showPerformanceOverlay: true,
        // smartManagement: SmartManagement.keepFactory,
        debugShowCheckedModeBanner: false,
        // translationsKeys: {Keys.ar: ar, Keys.en: en},
        locale: Locale("ar"),
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Spanish
        ],
        // fallbackLocale: const Locale(Keys.en),
        // supportedLocales: const [Locale(Keys.en), Locale(Keys.ar)],
        localizationsDelegates: const [
          // CountryLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        // theme: getThemeData,
        // themeMode: ThemeMode.light,
        // // initialRoute: Routes.main,
        // initialRoute: Routes.init,
        // getPages: AppPages.routes,
        home:  HomePage(),
      ),
    );
  }
}