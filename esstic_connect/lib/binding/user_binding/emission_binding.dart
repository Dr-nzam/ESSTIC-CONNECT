import 'package:esstic_connect/controller/user_controller/emission_controller.dart';
import 'package:get/get.dart';

class EmissionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<EmissiontController>(() => EmissiontController());
  }
}