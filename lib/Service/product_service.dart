import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_app/config.dart';
import 'package:shop_app/models/Products.dart';

class ProductService {
  static Future<Products?> getProduct() async {
    final response = await http.get(
      Uri.parse("${Config.BACKEND_URL}get-all-products"),
      headers: {"Content-Type": "application/json"},
    );
    // print(response.body);

    if (response.statusCode == 200) {
      // print("Connected to the backend.");
      // print(response.body);
      return Products.fromJson(jsonDecode(response.body));
    } else {
      // If the status code is not 200, handle the error or return null.
      print("Failed to connect to the backend. Status code: ${response.statusCode}");
      return null;
    }
  }
}
