import 'package:flutter/material.dart';

class Background {
  Column buildBackground(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Column(
            children: <Widget>[Image.asset('images/Jatim.png')],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: <Widget>[Image.asset('images/Jatim.png')],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: <Widget>[Image.asset('images/Jatim.png')],
          ),
        ),
      ],
    );
  }
}
