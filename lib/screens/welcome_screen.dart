import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';
  @override
  Widget build(BuildContext context) {
    //
    DotsDecorator getDotDecoretor() => DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).primaryColor,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        );

    PageDecoration getPageDecoration() {
      return PageDecoration(
        pageColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.grey,
          // fontWeight: FontWeight.w700,
          fontSize: 15.0,
        ),
      );
    }

    // Custom Page View Model
    PageViewModel customPageViewModel(
        {String imageUrl, String title, String body, Widget footer}) {
      return PageViewModel(
        decoration: getPageDecoration(),
        title: title,
        body: body,
        image: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/images/waiting.gif'),
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
            height: 175.0,
          ),
        ),
        footer: footer,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            customPageViewModel(
              imageUrl: "assets/images/pharmacy.jpg",
              title: "Pharmacies de garde",
              body:
                  "Vous pouvez grâce à UsefulInfo connaitre les pharmacies de garde près de vous",
            ),
            customPageViewModel(
              imageUrl: "assets/images/useful-number.png",
              title: "Numéros d'urgence",
              body:
                  "Cette rubrique regroupe les numéros d'urgences tels les Sapeurs pompiers, la Gendamerie...",
            ),
            customPageViewModel(
              imageUrl: "assets/images/restaurant.png",
              title: "Restaurants",
              body:
                  "Retrouvez les restaurants près de chez vous et passez vos commandes en toute tranquilité",
              footer: ElevatedButton(
                child: Text(
                  'Commencez',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
            ),
          ],
          done: const Text(
            "Go !",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          onDone: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
          color: Colors.orange,
          skipColor: Colors.green,
          doneColor: Colors.orange,
          showDoneButton: true,
          showSkipButton: true,
          skip: Text(
            'Passer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          next: Icon(Icons.arrow_forward_ios),
          dotsDecorator: getDotDecoretor(),
          animationDuration: 1000,
        ),
      ),
    );
  }
}
