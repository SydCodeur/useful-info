import 'package:dashboard_ui/helpers/url_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class InfoScreen extends StatelessWidget {
  static const routeName = '/infos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "Info",
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
          onPressed: () =>
              Navigator.of(context).pushNamed(HomeScreen.routeName),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Designed By',
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: ' Didier Senou',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => UrlHelper.launchURL(
                        'https://www.linkedin.com/in/didier-senou-09885818b/',
                        ''),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
