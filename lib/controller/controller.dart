import 'package:get/get.dart';

class Controller extends GetxController {
  var favourites = false.obs;
  var addtocart = false.obs;
  void checkifliked() {
    favourites.value = !favourites.value;
    update();
  }
  void addedtocart() {
    addtocart.value = !addtocart.value;
    update();
  }
}
