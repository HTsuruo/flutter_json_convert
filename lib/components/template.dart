import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  const Template({
    Key key,
    @required this.routeName,
    @required this.builder,
  }) : super(key: key);

  final String routeName;
  final AsyncWidgetBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    final data = DefaultAssetBundle.of(context).loadString('data.json');
    return Scaffold(
      appBar: AppBar(title: Text(routeName)),
      body: FutureBuilder<String>(
        future: data,
        builder: builder,
      ),
    );
  }
}
