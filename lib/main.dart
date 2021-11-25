import 'package:flutter/material.dart';
import "./components/List/list_item.dart";

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ListItem(
        iconName: Icons.cake,
        name: "cake",
        color: Colors.blue,
      ),
    );
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
