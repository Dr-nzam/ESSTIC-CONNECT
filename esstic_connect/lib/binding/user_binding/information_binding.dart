import 'package:esstic_connect/controller/user_controller/information_controller.dart';
import 'package:get/get.dart';

class InformatoinBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<InformationController>(() => InformationController());
  }

}