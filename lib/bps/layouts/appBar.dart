import 'package:flutter/material.dart';

class BPSAppBar {
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          tooltip: 'Log out',
          onPressed: () {},
        ),
      ],
    );
  }
}
