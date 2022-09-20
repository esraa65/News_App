import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/constants.dart';
import 'package:news_app/provider/appconfigprovider.dart';
import 'package:news_app/view/screen/homescreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppConfigProvider>(
      create: (buildContext) {
        return AppConfigProvider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      theme: Constants.lighttheme,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        centered: true,
        splashIconSize: double.infinity,
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
      locale: Locale(provider.applanguage),
      // theme: ThemeData(primarySwatch: Colors.green,),
    );
  }
}
