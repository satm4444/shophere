import 'package:flutter/material.dart';

import 'package:shophere/widgets/product_grid.dart';

enum FilterOptions { Favourites, All }

class ProductOverViewScreen extends StatefulWidget {
  @override
  _ProductOverViewScreenState createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  bool showFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop here"),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (FilterOptions selectedoption) {
              setState(() {
                if (selectedoption == FilterOptions.Favourites) {
                  showFavourite = true;
                } else {
                  showFavourite = false;
                }
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Show Favourites"),
                value: FilterOptions.Favourites,
              ),
              PopupMenuItem(
                child: Text("All"),
                value: FilterOptions.All,
              )
            ],
          )
        ],
      ),
      body: ProductGrid(),
    );
  }
}
