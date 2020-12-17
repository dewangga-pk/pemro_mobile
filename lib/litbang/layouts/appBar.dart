import 'package:flutter/material.dart';

class LitbangTaniAppBar {
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff408A14),
      title: Row(
        children: <Widget>[
          Image(image: AssetImage('images/litbang_tani.png')),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text(
              'Badan Litbang Pertanian',
              style: TextStyle(fontSize: 12),
            ),
          )
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
