import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:ui/controller/controller.dart';
import 'package:ui/view/product_page.dart';

//-------------------------------------------------------common widgets--------------------------------------------//
//-----------------add to cart------------------------//
Widget cartadd() => Obx(() => controller.addtocart.value
    ? IconButton(
        onPressed: () {
          controller.addedtocart();
        },
        icon: const Icon(Icons.add_box_rounded),
        color: const Color.fromRGBO(255, 190, 0, 10))
    : IconButton(
        onPressed: () {
          controller.addedtocart();
        },
        icon: const Icon(Icons.add_box_rounded),
        color: Colors.black87));
//-------------------------------------------------------//
//-------------------add to favourites-------------------//
Widget favouritesadd() => Obx(() => controller.favourites.value
    ? Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color.fromRGBO(255, 190, 0, 10)),
        child: Center(
          child: IconButton(
            onPressed: () {
              controller.checkifliked();
            },
            icon: const Icon(
              Icons.favorite,
              size: 16,
            ),
            color: Colors.white,
          ),
        ))
    : Container(
        height: 30,
        width: 30,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade300),
        child: Center(
          child: IconButton(
            icon: const Icon(
              Icons.favorite,
              size: 16,
            ),
            onPressed: () {
              controller.checkifliked();
            },
          ),
        )));
//-----------------------------------------------------------//
final controller = Get.put(Controller());
const sizedh15 = SizedBox(
  height: 15,
);
const sizedw15 = SizedBox(
  width: 15,
);
const sizedh7 = SizedBox(
  height: 7,
);
final List<String> imageList = [
  "https://www.hccb.in/images/Minute-Maid-Blog-banner.jpg",
  "https://www.hccb.in/images/Minute-Maid-Blog-banner.jpg",
  "https://www.hccb.in/images/Minute-Maid-Blog-banner.jpg"
];
//----------------------------------------------------------Home Page------------------------------------------------//
//--------------------homepage_appbar---------------------//
homepageappbar() => SliverAppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      )),
      toolbarHeight: 400,
      backgroundColor: const Color.fromRGBO(225, 225, 225, 10),
      elevation: 0,
      title: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 450,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.circle_notifications_outlined,
                        color: Colors.redAccent,
                        size: 45,
                      ),
                      SizedBox(
                        width: 6.94,
                      ),
                      Text(
                        "Harvest",
                        style: TextStyle(
                            color: Color.fromRGBO(83, 83, 83, 100),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.grey.shade700,
                            size: 24,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Delivery Location",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color.fromRGBO(83, 83, 83, 119)),
                          ),
                          Text(
                            "60 Suhaim Bin Hamad St, Al Sadd Area, Doha",
                            style: TextStyle(
                                color: Color.fromRGBO(83, 83, 83, 100),
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Color.fromRGBO(255, 0, 0, 100),
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  homepagesearchTF(),
                  const SizedBox(
                    height: 15,
                  ),
                  homepagecarousel()
                ],
              ),
            ),
          ),
        ],
      ),
    );
//-------------------------------------------------------//
//--------------------bottom navigation------------------//
Widget bottomnavigationbar() => ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(255, 51, 51, 100),
        iconSize: 25,
        unselectedItemColor: Colors.grey.shade300,
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedFontSize: 0,
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_fill), label: '')
        ],
      ),
    );
//-------------------------------------------------------------------//
//--------------------------Carousel---------------------------------//
Widget homepagecarousel() => GFCarousel(
      hasPagination: true,
      viewportFraction: 5.0,
      enableInfiniteScroll: false,
      passiveIndicator: Colors.white,
      activeIndicator: const Color.fromRGBO(171, 165, 173, 100),
      items: imageList.map((url) {
        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child:
              Image.network(url, height: 200, fit: BoxFit.contain, width: 300),
        );
      }).toList(),
    );
//----------------------------------------------------------------------------//
//-----------------------------search TextField-------------------------------//
Widget homepagesearchTF() => Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        decoration: InputDecoration(
            hintText: "Search for products",
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.white,
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
//--------------------------------------------------------------------//
//---------------------------bottom bar-------------------------------//
homepagetabbar() => const TabBar(
     
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
          color: Color.fromRGBO(225, 225, 225, 10),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      indicatorColor: Colors.transparent,
      unselectedLabelColor: Colors.black54,
      automaticIndicatorColorAdjustment: true,
      enableFeedback: true,
      labelColor: Colors.red,
      tabs: [
        Tab(
          text: "Categories",
        ),
        Tab(
          text: "Today Offers",
        ),
        Tab(
          text: "Favorites",
        ),
      ],
    );
//--------------------------------------------------------//
//-------------------------------------------------------Todays offer------------------------------------------------//
//------------------items----------------------//
Widget todayofferitem(
  String txtprice,
  String images,
) =>
    GestureDetector(
      onTap: () => Get.to(() => const ProductPage()),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.grey.shade300),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(images))),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 50,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 190, 0, 10),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: const Center(
                  child: Text(
                "15%\nOFF",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Align(alignment: Alignment.topRight, child: favouritesadd()),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          txtprice,
                          style: const TextStyle(fontSize: 10),
                        ),
                        cartadd()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
//-----------------------------------------------------------------------------------------------------------------//
//-----------------------------------------------favourites--------------------------------------------------------//
Widget favouritesitems(
  String txtprice,
  String images,
) =>
    Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey.shade300),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.close))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        txtprice,
                        style: const TextStyle(fontSize: 10),
                      ),
                      cartadd()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
//-----------------------------------------------------------------------------------------------------------------//
//---------------------------------------------------Categories----------------------------------------------------//
//-----------------------banner---------------------//
Widget categoriesbanner(String image) => Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
    );
//--------------------------------------------------//
//--------------------cards-------------------------//
Widget categoriescards(String image) => Container(
      height: 230,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
    );
//----------------------------------------------------//
//-----------------------------------------------------product page-------------------------------------------------//
productpageappbar() => SliverAppBar(
      backgroundColor: Colors.grey.shade100,
      elevation: 0,
      titleSpacing: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Get.back();
        },
        color: Colors.black,
      ),
      title: const Text(
        "Sugar 1kg",
        style: TextStyle(color: Colors.black),
      ),
      actions: const [
        Icon(
          Icons.search,
          color: Colors.black,
        ),
        sizedw15
      ],
    );
//-----------------------------------------------------------//
//---------------------sub heads-----------------------------//
Widget productpagesubheads(String txt) => Text(
      txt,
      style: const TextStyle(
          color: Color.fromRGBO(92, 92, 92, 100),
          fontWeight: FontWeight.w400,
          fontSize: 16),
    );
//--------------------------------------------------------------//
//-------------------------Related products----------------------//
Widget productpageRelatedproducts(String txt, String image, dynamic coloured) =>
    Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
                color: coloured,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: const Center(
                child: Text(
              "15%\nOFF",
              style: TextStyle(color: Colors.white, fontSize: 12),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.topRight, child: favouritesadd()),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        txt,
                        style: const TextStyle(fontSize: 10),
                      ),
                      cartadd()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
