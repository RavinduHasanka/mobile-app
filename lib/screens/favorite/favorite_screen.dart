import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Products.dart';

import '../details/details_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late Future<List<Products>> favoriteProducts;

  @override
  void initState() {
    super.initState();
    // favoriteProducts = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            "Favorites",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: FutureBuilder<List<Products>>(
                future: favoriteProducts,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Products> favoriteProducts = snapshot.data!;
                    return GridView.builder(
                      itemCount: favoriteProducts.length,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 0.7,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) => ProductCard(
                        // product: favoriteProducts[index],
                        onPress: () => Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          // arguments: ProductDetailsArguments(product: favoriteProducts[index]),
                        ), products: [],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text("Error loading favorites");
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
