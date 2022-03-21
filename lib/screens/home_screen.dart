import 'package:dashboard_ui/screens/pharmacies_screen.dart';

import '../widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

// Screens
import '../screens/restaurants_screen.dart';
import '../screens/useful_numbers_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Custom card
    Widget customCard(String imageUrl, String title, String routeName) {
      return InkWell(
        onTap: () => Navigator.of(context).pushReplacementNamed(routeName),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                height: 80,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: customAppBar("Les catégories", context, '/'),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      primary: false,
                      mainAxisSpacing: 10,
                      children: [
                        customCard(
                          'assets/images/pharmacy.jpg',
                          'Pharmacies',
                          PharmaciesScreen.routeName,
                        ),
                        customCard(
                          'assets/images/useful-number.png',
                          'Numéros utiles',
                          UsefulNumbersScreen.routeName,
                        ),
                        customCard(
                          'assets/images/restaurant.png',
                          'Restaurants',
                          RestaurantsScreen.routeName,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
