import 'package:flutter/material.dart';
import 'package:flutter_json_convert/freezed_page.dart';
import 'package:flutter_json_convert/json_codec_page.dart';
import 'package:flutter_json_convert/json_serialization_page.dart';
import 'package:flutter_json_convert/model_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Convert Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: _RootPage.routeName,
      routes: {
        _RootPage.routeName: (_) => const _RootPage(),
        JsonCodecPage.routeName: (_) => const JsonCodecPage(),
        ModelPage.routeName: (_) => const ModelPage(),
        JsonSerializationPage.routeName: (_) => const JsonSerializationPage(),
        FreezedPage.routeName: (_) => const FreezedPage(),
      },
    );
  }
}

class _RootPage extends StatelessWidget {
  const _RootPage({Key key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    const pages = [
      JsonCodecPage.routeName,
      ModelPage.routeName,
      JsonSerializationPage.routeName,
      FreezedPage.routeName,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Json Convert Demo')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (_, index) {
          final page = pages[index];
          return ListTile(
            title: Text(page),
            onTap: () => Navigator.of(context).pushNamed(page),
            trailing: const Icon(Icons.navigate_next),
          );
        },
      ),
    );
  }
}
