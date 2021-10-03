
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'azkar_screen.dart';
import 'launch_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
      ],
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,

      initialRoute: '/launch_screen',
      routes: {
      '/launch_screen':(context) => LaunchScreen(),
       '/azkar_screen' : (context) => AzkarScreen(),
      },
    );
  }
}










