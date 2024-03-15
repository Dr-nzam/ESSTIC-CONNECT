import 'package:esstic_connect/data/utilisateur_model.dart';
import 'package:esstic_connect/provider/user_provider.dart';
import 'package:get/get.dart';


class InformationController extends GetxController{

  var loading = false.obs;
  final infoModel = Get.put(InformationModel());
  Future<void> getAllInformation() async {
    loading.value = true;
     final HomeProvider provider = HomeProvider();
    var response = await provider.listInformation();
    if (!response.status.hasError) {
      infoModel.info.value= response.body;  
      loading.value = false;
    } else {
      loading.value = true;
    }
  }

  Future<void> getDetailInformation(int id) async {
    loading.value = true;
     final HomeProvider provider = HomeProvider();
    var response = await provider.detailInformation(id);
    if (!response.status.hasError) {
      infoModel.donnees.value= response.body;  
      print(response.body);
      loading.value = false;
    } else {
      loading.value = true;
    }
  }
}

