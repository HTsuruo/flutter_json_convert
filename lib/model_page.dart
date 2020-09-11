import 'package:flutter/material.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({Key key}) : super(key: key);
  static const routeName = '/model';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(routeName)),
      body: Container(),
    );
  }
}
