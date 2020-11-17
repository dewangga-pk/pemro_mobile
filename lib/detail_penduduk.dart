import 'package:flutter/material.dart';

class Detailpenduduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BPS"), backgroundColor: Color(0xff0309B7)),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[Text("Nama Kota/Kab : "), Text("Jember")],
            ),
            Row(
              children: <Widget>[Text("Jumlah : "), Text("2451000")],
            ),
            Row(
              children: <Widget>[Text("Tahun : "), Text("2019")],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  color: Colors.orangeAccent[200],
                  child: Text("Edit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
