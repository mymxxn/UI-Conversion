
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/widgets.dart';

class TodayOffers extends StatelessWidget {
  const TodayOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 9 / 12,
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      crossAxisSpacing: 22,
      mainAxisSpacing: 20,
      crossAxisCount: 2,
      children: <Widget>[
        todayofferitem(
          "Sugar 1Kg\nQAR 1.00",
          "assets/1.png",
        ),
        todayofferitem(
          "Bread Packet\nQAR 1.50",
          "assets/7.png",
        ),
        todayofferitem(
          "Rowse Honey 1Kg\nQAR 7.50",
          "assets/3.png",
        ),
        todayofferitem(
          "Corn Flour 1Kg\nQAR 2.00",
          "assets/6.png",
        ),
        todayofferitem(
          "Red Label Tea 250gm\nQAR 5.50",
          "assets/2.png",
        ),
        todayofferitem(
          "Pepper Powder 1Kg\nQAR 2.00",
          "assets/4.png",
        ),
        todayofferitem(
          "Milk 1 litre\nQAR 1.50",
          "assets/5.png",
        ),
        todayofferitem(
          "Corn Flakes 1Kg\nQAR 4.50",
          "assets/8.png",
        ),
       
      ],
    );
  }
}
