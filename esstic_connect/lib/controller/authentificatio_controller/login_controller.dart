import 'package:esstic_connect/data/authentification_model.dart';
import 'package:esstic_connect/data/secure_stokage.dart';
import 'package:esstic_connect/provider/authentification_provider.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  var loading = false.obs;
  final userModel = Get.put(UserModel());
  final AuthentificationProvider _provider = AuthentificationProvider();
  Future<Response> loginUserPost(String email, String password) async {
    final SecureStorage secureStorage = SecureStorage();
    
    loading.value = true;
    var response = await _provider.loginUser({
      'email': email,
      'password': password,
    });
      if (!response.status.hasError) {
        userModel.token.value = response.body;
        loading.value = false;
        await secureStorage.setToken(userModel.token['access']);
        // String? a = await secureStorage.getFirstInstall();
        // print(a);
        return response;
      } else {
        loading.value = false;
        return response;
      }
  }
  
  Future<Response> getInfoUser(String token) async {
    loading.value = true;
    var response = await _provider.infoUseGet(token);
    if (!response.status.hasError) {
      loading.value = false;
      if (response.statusCode == 200) {
        userModel.donnees.value = [response.body];
        loading.value = false;
        return response;
      }
    } else {
      loading.value = false;
      return response;
    }
      return response;
  }
}