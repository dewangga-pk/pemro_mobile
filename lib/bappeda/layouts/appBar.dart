import 'package:feis_mobile/auth_services.dart';
import 'package:flutter/material.dart';

class BappedaAppBar {
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff5F5F5F),
      title: Row(
        children: <Widget>[
          Image(image: AssetImage('images/provinsi_jatim.png')),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text(
              'BAPPEDA',
              style: TextStyle(fontSize: 14),
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
          onPressed: () async {
            await AuthServices.signOut();
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ],
    );
  }
}
