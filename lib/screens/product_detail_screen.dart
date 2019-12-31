import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  ProductDetailScreen();

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String; //id
    final loadedProduct =
        Provider.of<ProductsProvider>(context).findById(productId);
        
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text(loadedProduct.title)),
      ),
    );
  }
}
