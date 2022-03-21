import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static void launchURL(url, type) async {
    final _url = type == 'tel' ? 'tel:$url' : '$url';
    await canLaunch(_url)
        ? await launch(_url)
        : throw "La redirection vers $_url a échoué";
  }
}
