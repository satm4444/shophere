import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shophere/models/products.dart';
import 'package:shophere/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  final bool showFavourites;
  ProductGrid(this.showFavourites);
  @override
  Widget build(BuildContext context) {
    final loadedroducts = Provider.of<Products>(context);
    final products =
        showFavourites ? loadedroducts.favourites : loadedroducts.items;
    return GridView.builder(
        itemCount: products.length,
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2),
        itemBuilder: (ctx, index) =>
            Consumer<Products>(builder: (key, builder, _) {
              return ChangeNotifierProvider.value(
                  value: products[index], child: ProductItem());
            }));
  }
}
