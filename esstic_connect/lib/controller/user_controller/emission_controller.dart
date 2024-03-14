import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/provider/user_provider.dart';
import 'package:get/get.dart';

class EmissiontController extends GetxController{

  var loading = false.obs;
  final emissionModel = Get.put(EmissionModel());
  Future<void> getAllEmission() async {
    loading.value = true;
     final HomeProvider provider = HomeProvider();
    var response = await provider.listEmission();
    if (!response.status.hasError) {
      emissionModel.emission.value= response.body;  
      loading.value = false;
      print("########################################");
      print(response.body);
    } else {
      loading.value = true;
    }
  }
}