import 'package:dio/dio.dart';
import 'package:proudect_app/models/peoudect_model.dart';

class ProudectServices {
  final Dio dio;

  ProudectServices(this.dio);

  Future<List<ProudectModel>> hetHttp() async {
    Response response = await dio.get('https://fakestoreapi.com/products');
    List<dynamic> json = response.data;
    List<ProudectModel> listProudect = [];
    for (var element in json) {
      try {
        ProudectModel proudectModel = ProudectModel.fromJson(element);
        listProudect.add(proudectModel);
      } on DioException catch (e) {
        throw Exception(e);
      }
    }
    return listProudect;
  }
}
