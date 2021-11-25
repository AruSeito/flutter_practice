import 'package:flutter/material.dart';
import "./List/list_item.dart";

class CategoryRoute extends StatelessWidget {
  const CategoryRoute({Key? key}) : super(key: key);

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget getList(List<Widget> categories) {
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return categories[index];
        });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <ListItem>[];

    for (int i = 0; i < _categoryNames.length; i++) {
      categories.add(ListItem(
          name: _categoryNames[i],
          iconName: Icons.cake,
          color: _baseColors[i]));
    }

    final listView = Container(child: getList(categories));

    final appBar = AppBar(
        elevation: 0.0,
        title: const Text(
          "Unit Converter",
          style: TextStyle(fontSize: 30),
        ));

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
