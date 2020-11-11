import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0309B7),
          title: Text("BPS"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
              width: 113,
              height: 108,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  border: Border.all(color: Color(0xff0718FF))),
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('images/penduduk.png')),
                  Text(
                    "Penduduk",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
