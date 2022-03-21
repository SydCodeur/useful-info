import 'package:dashboard_ui/helpers/url_helper.dart';
import 'package:flutter/material.dart';

class UsefulNumberItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String number;

  UsefulNumberItem(this.imageUrl, this.name, this.number);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: FadeInImage(
            fit: BoxFit.cover,
            width: 50,
            height: 50,
            placeholder: AssetImage('assets/images/waiting.gif'),
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        subtitle: Text(
          number,
        ),
        trailing: InkWell(
            onTap: () {
              UrlHelper.launchURL(number, 'tel');
            },
            child: Icon(Icons.call_outlined)),
      ),
    );
  }
}
