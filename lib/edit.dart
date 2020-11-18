import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff0309B7),
          title: Row(
            children: <Widget>[
              Image(image: AssetImage('images/BPS.png')),
              Text('BPS')
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Go to Home Page',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
        ),
      body: ,
    );
  }
}
