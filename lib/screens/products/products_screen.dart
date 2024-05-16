import 'package:flutter/material.dart';
import '/constants.dart';
import 'package:shop_app/models/Products.dart';
import '../../Service/product_service.dart';
import '../details/details_screen.dart';

class ProductsScreen extends StatefulWidget {

  static String routeName = "/products";

  const ProductsScreen({
    Key? key
  }) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products Screen'),
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

               int newProductsCount = productdata?.existProducts?.where((product) => product.conditions == 'New')?.length ?? 0;
               print("Products Count = ${productCount}");
                print("New Products Count = ${newProductsCount}");

               bool hasAllProducts = productdata?.existProducts?.any((product) => product.conditions == 'New' ) ?? false;

              if (!hasAllProducts) {
                return Center(
                  child: Text(
                    'Currently Not Available in Accessories Products',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }

                return
                  GridView.builder(
                  itemCount: newProductsCount,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                  ),

                  itemBuilder: (context, index) {
                    if (productdata?.existProducts?.elementAt(index).conditions == "New" ||
                    productdata?.existProducts?.elementAt(index).conditions == "new") {
                      return
                      SizedBox(
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
                                  child: Image.asset(productdata?.existProducts?.elementAt(index).imageUrls?.first.url ??''),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                productdata?.existProducts?.elementAt(index).productName.toString() ??'',
                                style: Theme.of(context).textTheme.bodyMedium,
                                maxLines: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\Rs.${productdata?.existProducts?.elementAt(index).sellingPrice.toString() ??''}",
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
                    //   ProductCard(
                    //   products: productdata?.existProducts ?? [],
                    //   onPress: () => Navigator.pushNamed(
                    //     context,
                    //     DetailsScreen.routeName,
                    //     arguments: ProductDetailsArguments(products: productdata!.existProducts ?? ''),
                    //   ),
                    // );
                  },
                );
              }
          ),
        ),
      ),
    );
  }
}
