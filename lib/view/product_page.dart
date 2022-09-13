import 'package:flutter/material.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:ui/widgets.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          productpageappbar(),
        ],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/product_single1.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(45),
                child: Align(
                    alignment: Alignment.topRight, child: favouritesadd()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "QAR 7.50",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromRGBO(45, 46, 73, 10),
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Sugar 1kg",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromRGBO(45, 46, 73, 10),
                                      fontWeight: FontWeight.w500)),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share_outlined,
                                    size: 25,
                                    color: Color.fromRGBO(92, 92, 92, 100),
                                  ),
                                  label: const Text(
                                    "Share",
                                    style: TextStyle(
                                        color: Color.fromRGBO(92, 92, 92, 100),
                                        fontSize: 17),
                                  ))
                            ],
                          ),
                          const Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt."),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove_circle)),
                                  Container(
                                    height: 22,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        color: Colors.white),
                                    child: const Center(
                                      child: Text("01"),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add_circle))
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor:
                                        const Color.fromRGBO(255, 0, 0, 50)),
                                child: const Text("Add to cart"),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          productpagesubheads("Description"),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem",
                            style: TextStyle(
                              color: Color.fromRGBO(72, 72, 72, 100),
                            ),
                          ),
                          sizedh15,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  productpagesubheads("Reviews"),
                                  const Text("(415)",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(92, 92, 92, 100),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10)),
                                ],
                              ),
                              const Text("See all reviews",
                                  style: TextStyle(
                                      color: Color.fromRGBO(92, 92, 92, 100),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12))
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ListTile(
                            leading: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/user.png"))),
                                )
                              ],
                            ),
                            title: const Text("Harris"),
                            subtitle: const Text("08-08-2020"),
                            trailing: GFRating(
                                onChanged: (value) {},
                                value: 5,
                                size: 10,
                                color: const Color.fromRGBO(255, 190, 0, 10)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 82),
                            child: Transform.translate(
                              offset: const Offset(0, -10),
                              child: const Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 13),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          productpagesubheads("Related Products"),
                          Expanded(
                            child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                childAspectRatio: 10 / 13,
                                primary: false,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                crossAxisSpacing: 22,
                                mainAxisSpacing: 20,
                                crossAxisCount: 2,
                                children: <Widget>[
                                  productpageRelatedproducts(
                                      "Rowse Honey 1kg\nQAR 7.50",
                                      "assets/3.png",
                                      const Color.fromRGBO(255, 190, 0, 10)),
                                  productpageRelatedproducts(
                                      "Corn Flour 1kg\nQAR 2.50",
                                      "assets/6.png",
                                      Colors.white)
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
