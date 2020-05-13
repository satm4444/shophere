import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String image;

  const ProductItem(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(image),
        footer: GridTileBar(
          backgroundColor: Colors.black26,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
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
