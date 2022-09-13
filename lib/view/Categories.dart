import 'package:flutter/cupertino.dart';
import 'package:ui/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            categoriesbanner(
                "https://st.depositphotos.com/1000260/1604/i/600/depositphotos_16048705-stock-photo-decorative-cosmetics-for-makeup.jpg"),
            sizedh7,
            const Text("Cosmetics"),
            sizedh15,
            Row(
              children: [
                Column(
                  children: [
                    categoriescards(
                        "https://www.eatright.org/-/media/eatrightimages/canned-foods_151572910.jpg"),
                    sizedh7,
                    const Text("Tinned & Dried Produce")
                  ],
                ),
                sizedw15,
                Column(
                  children: [
                    categoriescards(
                        "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/324844_2200-1200x628.jpg"),
                    sizedh7,
                    const Text("Oil & Fat")
                  ],
                ),
              ],
            ),
            sizedh15,
            categoriesbanner(
                "https://post.healthline.com/wp-content/uploads/2020/08/AN480-Eggs-Dairy-732x549-thumb.jpg"),
            sizedh7,
            const Text("Dairy & Eggs"),
            sizedh15,
            Row(
              children: [
                Column(
                  children: [
                    categoriescards(
                        "https://healthy-kids.com.au/wp-content/uploads/2013/12/ComplexCarbohydrateFamily.jpg"),
                    sizedh7,
                    const Text("Grains and Bread")
                  ],
                ),
                sizedw15,
                Column(
                  children: [
                    categoriescards(
                        "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/iStock-1165495226-1200x628.jpg"),
                    sizedh7,
                    const Text("Meat & Fish")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
