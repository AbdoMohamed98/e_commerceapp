import 'package:dio/dio.dart';
import 'package:e_commerceapp2/models/productmodel.dart';

class ProductService {
  final Dio dio = Dio();

  Future<List<Productmodel>> getProducts() async {
    try {
      final response =
          await dio.get('https://fakestoreapi.com/products');

      final List data = response.data;
      return data
          .map((item) => Productmodel.fromJson(item))
          .toList();
    } on DioException catch (e) {
      throw Exception(
        e.response?.data.toString() ?? 'Network error',
      );
    }
  }
}
