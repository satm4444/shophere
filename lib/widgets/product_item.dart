import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shophere/models/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProduct = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/product_detail",
                  arguments: loadedProduct.id);
            },
            child: Image.network(loadedProduct.imageURL)),
        footer: GridTileBar(
          backgroundColor: Colors.black26,
          title: Text(
            loadedProduct.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: Icon(loadedProduct.isFavourite
                ? Icons.favorite
                : Icons.favorite_border),
            onPressed: () {
              loadedProduct.toggleisFavourite();
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
