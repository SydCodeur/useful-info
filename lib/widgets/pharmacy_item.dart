import 'package:flutter/material.dart';

class PharmacyItem extends StatelessWidget {
  final String pharmacyName;
  final String pharmacyAddress;
  final double distance;
  PharmacyItem(
    this.pharmacyName,
    this.pharmacyAddress,
    this.distance,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          pharmacyName,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        subtitle: Text(
          pharmacyAddress,
        ),
        trailing: Text(
          '${distance.toString()} km',
        ),
      ),
    );
  }
}
