import 'package:dashboard_ui/widgets/pharmacy_item.dart';
import 'package:flutter/material.dart';

// Screen
import 'home_screen.dart';

// Widgets
import '../widgets/custom_app_bar.dart';

class PharmaciesScreen extends StatefulWidget {
  static const routeName = '/pharmacies';

  @override
  _PharmaciesScreenState createState() => _PharmaciesScreenState();
}

class _PharmaciesScreenState extends State<PharmaciesScreen> {
  var _searchText = "";
  List<PharmacyItem> _pharmacies = [];

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        // decoration: InputDecoration(
        //   hintText: 'Rechercher par nom',
        //   icon: Icon(Icons.search),
        // ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Rechercher par nom",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) {
          setState(() {
            _searchText = value;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // It is a hard-coded array. You can use data from an API
    final _pharmaciesList = [
      PharmacyItem(
          "Pharmacie de Gbossimé", "Gbossimé, Bd de la Kara, Lomé", 1.1),
      PharmacyItem("Pharmacie Maïna", "Rue 324 TOT, Lomé", 3.0),
      PharmacyItem("Pharmacie Pour Tous", "Victoire, Lomé", 3.3),
      PharmacyItem("Pharmacie Amessiame",
          "Carrefour Avenue Augustino de SOUZA, Lomé", 4.0),
      PharmacyItem('Pharmacie de la cité', 'Boulevard du 30 Aôut, Lomé', 6.0),
      PharmacyItem('Pharmacie La Grace', 'N1, Lomé', 7.3),
      PharmacyItem('Pharmacie Klokpé', 'BP Lomé Attiégou Togo 2000, Lomé', 7.6),
      PharmacyItem('Pharmacie Shalom', 'Bd Faure Gnassingbe, Lomé', 7.9),
      PharmacyItem("Pharmacie Vigueur", "Rue de l'Harmattan, Lomé", 8.1),
      PharmacyItem('Pharmacie Conseil', 'Route de Segbé, Lomé', 9.0),
    ];

    // We filter the list when the user does a search
    _pharmacies = _searchText == ""
        ? _pharmaciesList
        : _pharmaciesList
            .where((fetchedPharmacy) => fetchedPharmacy.pharmacyName
                .toLowerCase()
                .contains(_searchText.toLowerCase()))
            .toList();

    //
    return Scaffold(
      appBar: customAppBar("Les pharmacies", context, HomeScreen.routeName),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            RichText(
              text: TextSpan(text: '', children: [
                TextSpan(
                  text: '${_pharmacies.length}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' résultat(s) trouvés',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            _searchBar(),
            _pharmacies.length <= 0
                ? Center(
                    child: Text('Aucun résultat pour votre recherche'),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: _pharmacies.length,
                      itemBuilder: (context, index) => PharmacyItem(
                          _pharmacies[index].pharmacyName,
                          _pharmacies[index].pharmacyAddress,
                          _pharmacies[index].distance),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
