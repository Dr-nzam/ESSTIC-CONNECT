import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/provider/user_provider.dart';
import 'package:get/get.dart';


class TournoiController extends GetxController{

  var loading = false.obs;
  final tournoiModel = Get.put(TournoiModel());
  Future<void> getAllTournoi() async {
    loading.value = true;
     final HomeProvider provider = HomeProvider();
    var response = await provider.listTournoi();
    if (!response.status.hasError) {
      tournoiModel.tournoi.value= response.body;  
      loading.value = false;
    } else {
      loading.value = true;
    }
  }
}