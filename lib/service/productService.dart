import 'package:dio/dio.dart';
import 'package:organico_with_bloc_cubit/core/constants/urls.dart';
import 'package:organico_with_bloc_cubit/models/productsModel.dart';

class ProductService {
  Future<dynamic> getProducts() async {
    try {
      Response response = await Dio().get(Urls.Products);
      if (response.statusCode == 200) {
        print("succes Service");
        return ProductsModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
}
