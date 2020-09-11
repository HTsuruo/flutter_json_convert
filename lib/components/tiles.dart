import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  const Tiles({
    Key key,
    @required this.name,
    @required this.id,
    @required this.age,
  }) : super(key: key);

  final String name;
  final String id;
  final int age;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(id),
      trailing: Text(age.toString()),
    );
  }
}
