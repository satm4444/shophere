import 'package:flutter/material.dart';
import 'package:shophere/models/products.dart';
import 'package:shophere/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  Products prod = new Products();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: prod.items.length,
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2),
      itemBuilder: (ctx, index) =>
          ProductItem(prod.items[index].title, prod.items[index].imageURL),
    );
  }
}
