import 'package:feis_mobile/bps/bps_index.dart';
// import 'package:feis_mobile/litbang/litbang_index.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BPSIndex(),
    );
  }
}
