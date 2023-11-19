import 'package:get/get.dart';

class DetailController extends GetxController {
  var selectedImageIndex = 0.obs;

  void changeImage(int index) {
    selectedImageIndex.value = index;
  }
}
