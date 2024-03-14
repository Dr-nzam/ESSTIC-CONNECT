import 'package:esstic_connect/controller/user_controller/tournoi_controller.dart';
import 'package:get/get.dart';

class TournoiBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<TournoiController>(() => TournoiController());
  }
  
}