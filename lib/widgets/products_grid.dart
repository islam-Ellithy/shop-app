import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
            //builder: (context) => products[index],
            value: products[index],
            child: ProductItem(
                // title: products[index].title,
                // imageUrl: products[index].imageUrl,
                // id: products[index].id,
                // price: products[index].price),
                ));
      },
      itemCount: products.length,
      padding: EdgeInsets.all(10.0),
    );
  }
}
