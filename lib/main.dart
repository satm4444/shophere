import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shophere/models/products.dart';
import 'package:shophere/screens/Product_detail.dart';
import 'package:shophere/screens/productOverview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shophere",
        theme: ThemeData(
          primaryColor: Color(0xff852136),
          accentColor: Color(0xff8f242e),
          fontFamily: "Nunito",
        ),
        initialRoute: "/",
        routes: {
          "/": (ctx) => ProductOverViewScreen(),
          "/product_detail":(ctx)=>ProductDetail(),
        },
      ),
    );
  }
}
