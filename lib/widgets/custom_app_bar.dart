import 'package:dashboard_ui/screens/info_screen.dart';
import 'package:flutter/material.dart';

Widget customAppBar(title, BuildContext context, String backRouteName) {
  return AppBar(
    elevation: 0,
    title: Center(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () => Navigator.of(context).pushNamed(backRouteName),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.info_outline_rounded,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () => Navigator.of(context).pushNamed(InfoScreen.routeName),
      )
    ],
  );
}
