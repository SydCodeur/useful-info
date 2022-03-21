import 'package:dashboard_ui/widgets/restaurant_item.dart';
import 'package:flutter/material.dart';

// Screen
import '../screens/home_screen.dart';

// Widgets
import '../widgets/custom_app_bar.dart';

class RestaurantsScreen extends StatelessWidget {
  static const routeName = '/restaurants';
  final List<RestaurantItem> _restaurants = [
    RestaurantItem(
      'assets/images/restau1.png',
      'Bar Restaurant La Casa',
      'Bd du 13 Janvier, Lomé',
      1.1,
    ),
    RestaurantItem(
      'assets/images/restau2.jpg',
      "Dom's Restaurant",
      'Boulevard, Jean-Paul 2, Lomé',
      1.2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Les restaurants", context, HomeScreen.routeName),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _restaurants.length,
          itemBuilder: (context, index) => RestaurantItem(
              _restaurants[index].imageUrl,
              _restaurants[index].restaurantName,
              _restaurants[index].restaurantAddress,
              _restaurants[index].distance),
        ),
      ),
    );
  }
}
