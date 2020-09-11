import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_convert/components/template.dart';
import 'package:flutter_json_convert/components/tiles.dart';

class JsonCodecPage extends StatelessWidget {
  const JsonCodecPage({Key key}) : super(key: key);

  static const routeName = '/json_codec';

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
            final user = users[index] as Map<String, dynamic>;
            final id = user['id'] as String;
            final name = user['name'] as String;
            final age = user['age'] as int;
            return Tiles(name: name, id: id, age: age);
          },
        );
      },
    );
  }
}
