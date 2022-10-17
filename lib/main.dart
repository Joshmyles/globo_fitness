import 'package:flutter/material.dart';
import 'package:globo_fitness/screens/intro_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      theme: ThemeData(primarySwatch: Colors.blueGrey), 
      routes: {
        '/': (context) => IntroScreen(),
        'bmi' (context) +> BmiScreen(),
      },
      initialRoute: '/',
      //home: IntroScreen() //if u leave this active, it brings the infamous red screen - do not intialize route and home intro_screen at the same time - this shows a widget that failed to load
      ); //MaterialApp
  } 
}
