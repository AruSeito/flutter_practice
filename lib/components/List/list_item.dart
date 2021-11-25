import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String name;
  final IconData iconName;

  const ListItem({Key? key, required this.name, required this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          highlightColor: Colors.green[50],
          splashColor: Colors.green[100],
          onTap: () {
            print("点击了");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(iconName, size: 60.0)),
                Center(
                    child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}