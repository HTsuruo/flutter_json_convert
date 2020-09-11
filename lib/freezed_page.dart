import 'package:flutter/material.dart';

class FreezedPage extends StatelessWidget {
  const FreezedPage({Key key}) : super(key: key);

  static const routeName = '/freezed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(routeName)),
      body: Container(),
    );
  }
}
