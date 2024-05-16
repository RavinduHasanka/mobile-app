import 'package:flutter/material.dart';
import '/constants.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Products.dart';
import '../../Service/product_service.dart';
import '../details/details_screen.dart';

class ElectronicsProductsScreen extends StatefulWidget {

  static String routeName = "/products";

  const ElectronicsProductsScreen({
    Key? key
  }) : super(key: key);

  @override
  _ElectronicsProductsScreenState createState() => _ElectronicsProductsScreenState();
}

class _ElectronicsProductsScreenState extends State<ElectronicsProductsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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

              // Check if there are any products category name "electronics"

              bool hasElectronicsProducts = productdata?.existProducts?.any((product) => product.categories?.first.categoryName == 'electronics' || product.categories?.first.categoryName == 'Electronics' ) ?? false;

              if (!hasElectronicsProducts) {
                return Center(
                  child: Text(
                    'Currently Not Available in Electronics Products',
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
                  // Filter products by category name "electronics"
                  if (productdata?.existProducts?.elementAt(index).categories?.first.categoryName == "Electronics" ||
                      productdata?.existProducts?.elementAt(index).categories?.first.categoryName == "electronics") {
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