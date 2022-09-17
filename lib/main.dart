import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/view/screen/homescreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Constants.lighttheme,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        centered: true,
        splashIconSize: 950,
        splash: 'assets/images/splash.png',
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.topToBottom,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),
      // theme: ThemeData(primarySwatch: Colors.green,),
    );
  }
}
