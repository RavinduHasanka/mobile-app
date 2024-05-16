import 'package:flutter/material.dart';
import '/constants.dart';
import 'package:shop_app/models/Products.dart';
import '../../Service/product_service.dart';
import '../details/details_screen.dart';

class AppleProductsScreen extends StatefulWidget {

  static String routeName = "/products";

  const AppleProductsScreen({
    Key? key
  }) : super(key: key);

  @override
  _AppleProductsScreenState createState() => _AppleProductsScreenState();
}

class _AppleProductsScreenState extends State<AppleProductsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Products Screen'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FutureBuilder<Products?>(
            future: ProductService.getProduct(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              Products? productdata = snapshot.data;
              int productCount = productdata?.existProducts?.length ?? 0;

              // Check if there are any products category name "apple"

              bool hasAppleProducts = productdata?.existProducts?.any((product) => product.categories?.first.categoryName == 'apple' || product.categories?.first.categoryName == 'Apple' ) ?? false;

              if (!hasAppleProducts) {
                return Center(
                  child: Text(
                    'Currently Not Available in Apple Products',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }

              return GridView.builder(
                itemCount: productCount,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  // Filter products by category name "apple"
                  if (productdata?.existProducts?.elementAt(index).categories?.first.categoryName == "Apple" ||
                      productdata?.existProducts?.elementAt(index).categories?.first.categoryName == "apple") {
                    return SizedBox(
                      width: 140,
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to details screen or perform any action on tap
                          Navigator.pushNamed(context, DetailsScreen.routeName);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1.02,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: kSecondaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.asset(productdata?.existProducts?.elementAt(index).imageUrls?.first.url ?? ''),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              productdata?.existProducts?.elementAt(index).productName.toString() ?? '',
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 2,
                            ),
                            Text(
                              productdata?.existProducts?.elementAt(index).categories?.first.categoryName.toString() ?? '',
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\Rs.${productdata?.existProducts?.elementAt(index).sellingPrice.toString() ?? ''}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}