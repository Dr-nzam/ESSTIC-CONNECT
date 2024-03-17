import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:get/get.dart';

class AuthentificationProvider extends GetxController {
  final GetConnect getConnect = GetConnect();
   Future<Response> loginUser(Map<String, dynamic> data) async {
      final response = await getConnect.post('${Constants.baseUrl}/api/account/login/', data);
      return response;
  }
  Future<Response> infoUseGet(String token) async {
    final response =
        await getConnect.get('${Constants.baseUrl}/api/account/info-user/', headers: {
      'Authorization': 'Token $token',
    });
    return response;
  }
  }