import 'package:flutter/material.dart';
import 'package:ui/view/Categories.dart';
import 'package:ui/view/Favorites.dart';
import 'package:ui/view/Todayoffers.dart';
import 'package:ui/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
                [homepageappbar()],
            body: Column(
              children: [
                homepagetabbar(),
                const Expanded(
                  flex: 3,
                  child: TabBarView(
                    children: [
                      Categories(),
                      TodayOffers(),
                      Favourites(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: bottomnavigationbar()),
    );
  }
}
