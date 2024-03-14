import 'package:esstic_connect/core/constante/constant_asset.dart';
import 'package:get/get.dart';

class HomeProvider extends GetxController {
  final GetConnect getConnect = GetConnect();

  Future<Response> listInformation() async {
    final response = await getConnect
        .get('${Constants.baseUrl}/api/information/getallinformation/');
    return response;
  }

  Future<Response> listEvenement() async {
    final response = await getConnect
        .get('${Constants.baseUrl}/api/evenement/all-event/');
    return response;
  }

  Future<Response> listEmission() async {
    final response = await getConnect
        .get('${Constants.baseUrl}/api/emission/tout-emission/');
    return response;
  }

  Future<Response> listTournoi() async {
    final response = await getConnect
        .get('${Constants.baseUrl}/api/tournois/tout-tournoi/');
    return response;
  }
}
