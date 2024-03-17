import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/provider/user_provider.dart';
import 'package:get/get.dart';

class EvenementController extends GetxController{

  var loading = false.obs;
  final eventModel = Get.put(EvenementModel());
  Future<void> getAllEvenement() async {
    loading.value = true;
     final HomeProvider provider = HomeProvider();
    var response = await provider.listEvenement();
    if (!response.status.hasError) {
      eventModel.evenement.value= response.body;  
      loading.value = false;
    } else {
      loading.value = true;
    }
  }


  Future<void> getDetailEvent(int id) async {
    loading.value = true;
     final HomeProvider provider = HomeProvider();
    var response = await provider.detailEvent(id);
    if (!response.status.hasError) {
      eventModel.donnees.value= response.body;  
      print(response.body);
      loading.value = false;
    } else {
      loading.value = true;
    }
  }
}