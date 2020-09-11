import 'package:flutter/material.dart';

class JsonSerializationPage extends StatelessWidget {
  const JsonSerializationPage({Key key}) : super(key: key);
  static const routeName = '/json_serialization';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(routeName)),
      body: Container(),
    );
  }
}
