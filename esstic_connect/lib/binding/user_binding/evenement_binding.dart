import 'package:esstic_connect/controller/user_controller/evenement_controller.dart';
import 'package:get/get.dart';

class EvenementBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<EvenementController>(() => EvenementController());
  }

}