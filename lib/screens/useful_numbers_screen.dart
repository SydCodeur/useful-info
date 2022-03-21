import 'package:flutter/material.dart';

// Screen
import '../screens/home_screen.dart';

// Widgets
import '../widgets/custom_app_bar.dart';
import '../widgets/useful_number_item.dart';

class UsefulNumbersScreen extends StatelessWidget {
  static const routeName = '/useful-numbers';

  final List<UsefulNumberItem> _usefulNumbers = [
    UsefulNumberItem(
      'assets/images/1.jpg',
      'Gendarmerie Nationale',
      '117',
    ),
    UsefulNumberItem(
      'assets/images/2.png',
      'Sapeurs Pompiers',
      '118',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Numéros d'urgence", context, HomeScreen.routeName),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _usefulNumbers.length,
          itemBuilder: (context, index) => UsefulNumberItem(
            _usefulNumbers[index].imageUrl,
            _usefulNumbers[index].name,
            _usefulNumbers[index].number,
          ),
        ),
      ),
    );
  }
}
