import 'package:credit_card_app/controllers/card_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CardController());
  }
}
