import 'package:flutter/material.dart';
import 'package:shophere/screens/productOverview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}
