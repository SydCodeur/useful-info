import 'package:dashboard_ui/screens/info_screen.dart';
import 'package:dashboard_ui/screens/pharmacies_screen.dart';
import 'package:dashboard_ui/screens/useful_numbers_screen.dart';
import 'package:flutter/material.dart';

import './screens/welcome_screen.dart';

// Widgets
import './screens/home_screen.dart';
import './screens/restaurants_screen.dart';

import './palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Useful Info',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
        fontFamily: 'Lato',
      ),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        RestaurantsScreen.routeName: (ctx) => RestaurantsScreen(),
        UsefulNumbersScreen.routeName: (ctx) => UsefulNumbersScreen(),
        PharmaciesScreen.routeName: (ctx) => PharmaciesScreen(),
        InfoScreen.routeName: (ctx) => InfoScreen()
      },
    );
  }
}
