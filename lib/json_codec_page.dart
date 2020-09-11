import 'dart:convert';

import 'package:flutter/material.dart';

class JsonCodecPage extends StatelessWidget {
  const JsonCodecPage({Key key}) : super(key: key);

  static const routeName = '/json_codec';

  @override
  Widget build(BuildContext context) {
    final data = DefaultAssetBundle.of(context).loadString('data.json');
    return Scaffold(
      appBar: AppBar(title: const Text(routeName)),
      body: FutureBuilder<String>(
        future: data,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
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
              return ListTile(
                title: Text(name),
                subtitle: Text(id),
                trailing: Text(age.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
