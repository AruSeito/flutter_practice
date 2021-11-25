import 'package:flutter/material.dart';
import "./components/category_route.dart";

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CategoryRoute();
  }
}

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hhhhhh"),
        ),
        body: const Hello(),
      )));
}
