import 'package:flutter/cupertino.dart';
import 'package:ui/widgets.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 9 / 12,
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      crossAxisSpacing: 22,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        favouritesitems(
          "Sugar 1Kg\nQAR 1.00",
          "assets/1.png",
        ),
        favouritesitems(
          "Bread Packet\nQAR 1.50",
          "assets/7.png",
        ),
        favouritesitems(
          "Rowse Honey 1Kg\nQAR 7.50",
          "assets/3.png",
        ),
        favouritesitems(
          "Corn Flour 1Kg\nQAR 2.00",
          "assets/6.png",
        ),
        favouritesitems(
          "Red Label Tea 250gm\nQAR 5.50",
          "assets/2.png",
        ),
        favouritesitems(
          "Pepper Powder 1Kg\nQAR 2.00",
          "assets/4.png",
        ),
        favouritesitems(
          "Milk 1 litre\nQAR 1.50",
          "assets/5.png",
        ),
        favouritesitems(
          "Corn Flakes 1Kg\nQAR 4.50",
          "assets/8.png",
        ),
        favouritesitems(
          "Corn Flakes 1Kg\nQAR 4.50",
          "assets/8.png",
        ),
      ],
    );
  }
}
