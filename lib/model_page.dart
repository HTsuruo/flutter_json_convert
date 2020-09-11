import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_convert/components/template.dart';
import 'package:flutter_json_convert/components/tiles.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({Key key}) : super(key: key);
  static const routeName = '/model';
  @override
  Widget build(BuildContext context) {
    return Template(
      routeName: routeName,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        final data = snapshot.data;
        final json = jsonDecode(data) as Map<String, dynamic>;
        final users = json['users'] as List<dynamic>;
        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = User.fromJson(users[index] as Map<String, dynamic>);
            return Tiles(id: user.id, name: user.name, age: user.age);
          },
        );
      },
    );
  }
}

class User {
  User(this.id, this.name, this.age);

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        name = json['name'] as String,
        age = json['age'] as int;

  final String id;
  final String name;
  final int age;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'age': age,
      };
}
