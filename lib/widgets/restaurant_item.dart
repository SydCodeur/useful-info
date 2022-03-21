import 'package:flutter/material.dart';

class RestaurantItem extends StatelessWidget {
  final String imageUrl;
  final String restaurantName;
  final String restaurantAddress;
  final double distance;
  RestaurantItem(
    this.imageUrl,
    this.restaurantName,
    this.restaurantAddress,
    this.distance,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: FadeInImage(
              fit: BoxFit.cover,
              width: 50,
              height: 50,
              placeholder: AssetImage('assets/images/waiting.gif'),
              image: AssetImage(
                imageUrl,
              ),
            ),
            title: Text(
              restaurantName,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            subtitle: Text(
              restaurantAddress,
            ),
            trailing: Text(
              '${distance.toString()} km',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: FlatButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green,
                        content:
                            Text("Libre à vous d'ajouter votre écran MENU"),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.restaurant_menu,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
