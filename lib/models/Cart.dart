import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Products.dart';

class Cart {
  final Products? product;
  final int? numOfItem;

  Cart({this.product, this.numOfItem});
}

class CartService {
  // static const baseUrl = "http://localhost:5000";
  //
  // Future<List<Cart>> fetchCarts(int userId) async {
  //   final response = await http.get(Uri.parse('$baseUrl/cart-item/$userId'));
  //
  //   if (response.statusCode == 200) {
  //     Iterable<dynamic> data = json.decode(response.body);
  //     List<Cart> carts = data.map((cartData) {
  //       return Cart(
  //         product: Product(
  //           id: cartData['product']['id'],
  //           name: cartData['product']['name'],
  //           price: cartData['product']['price'],
  //           images: cartData['product']['imageUrls'],
  //           description: cartData['product']['description'],
  //           searchkeyword: cartData['product']['searchKeywords'],
  //           conditions: cartData['product']['conditions'],
  //           categoryName: cartData['product']['categoryName'],
  //           colors: cartData['product']['colors'],
  //           stock: cartData['product']['initialStock'],
  //           Capacities: cartData['product']['sizesOrCapacities'],
  //           weight: cartData['product']["weight"],
  //           brandname: cartData['product']["brandName"],
  //         ),
  //         numOfItem: cartData['numOfItem'],
  //       );
  //     }).toList();
  //
  //     return carts;
  //   } else {
  //     throw Exception('Failed to load cart items');
  //   }
  // }
}

// Example usage
// void main() async {
//   final userId = 1 ; // replace with the actual user ID
//   final cartService = CartService();
//   try {
//     List<Cart> carts = await cartService.fetchCarts(userId);
//     print(carts);
//   } catch (e) {
//     print('Error: $e');
//   }
// }
