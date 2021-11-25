import 'package:flutter/material.dart';
import 'package:udacity_course/components/convert_route.dart';
import '../unit.dart';

class ListItem extends StatelessWidget {
  final String name;
  final IconData iconName;
  final Color color;
  final List<Unit> units;

  const ListItem(
      {Key? key,
      required this.name,
      required this.iconName,
      required this.color,
      required this.units})
      : super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            name,
            style: Theme.of(context).textTheme.headline4,
          ),
          centerTitle: true,
          backgroundColor: color,
          elevation: 0.0,
        ),
        body: ConverterRoute(
          color: color,
          units: units,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        height: 100.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          highlightColor: color,
          splashColor: color,
          onTap: () {
            _navigateToConverter(context);
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
