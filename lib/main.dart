import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colors.dart';
import 'package:techblog/splash_screen.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: SolidColors.statusBarColor,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Localizations Sample App',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa'), // Persian
        ],
        theme: ThemeData(
          fontFamily: "LalezarFont",
          textTheme: const TextTheme(
            // ignore: deprecated_member_use
            headline1: TextStyle(
              fontFamily: "LalezarFont",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: SolidColors.posterTitle,
            ),
            // ignore: deprecated_member_use
            subtitle1: TextStyle(
              fontFamily: "LalezarFont",
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: SolidColors.posterSubTitle,
            ),
            // ignore: deprecated_member_use
            headline3: TextStyle(
              fontFamily: "LalezarFont",
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
