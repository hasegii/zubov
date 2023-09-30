import 'package:zubov/zubov.dart' as zubov;
import 'package:dio/dio.dart';
import 'package:freezed/builder.dart';

import 'models/prodResps/prodResp.dart';
import 'models/product/product.dart';

void main(List<String> arguments) async {
  var client = Dio();
  String url = 'https://dummyjson.com/products';

  Response<dynamic> response = await client.get(url);
  ProdResp data = ProdResp.fromJson(response.data);

  List<Product> productMassive = data.products;
  List<Product> resultMassive = [];
  String textResult = '';
  for (var el in productMassive) {
    if (el.brand == 'Apple') {
      resultMassive.add(el);
    }
  }
  resultMassive =
      productMassive.where((element) => element.brand == 'Apple').toList();

  bool filterCondition(Product product) {
    return product.brand == 'Apple';
  }
}
