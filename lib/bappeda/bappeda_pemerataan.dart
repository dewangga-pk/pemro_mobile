import 'package:feis_mobile/bappeda/bappeda_pemerataan_details.dart';
import 'package:feis_mobile/bappeda/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:flutter/material.dart';

class BappedaPemerataan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BappedaAppBar().buildAppBar(context),
      body: Stack(
        children: [
          Background().buildBackground(context),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xff1F266A), Color(0xff6A70AF)],
                  )),
                  width: 200,
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/pemerataan.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Informasi Pemerataan',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 0.65),
                      ),
                      child: Text(
                        "Informasi Pemerataan Pangan Jawa Timur",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: 320,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: ListView(
                      children: <Widget>[buildCard(context)],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card buildCard(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BappedaPemerataanDetails();
          }));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        Text("Jember"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.filter_vintage),
                        Text("7.5 ton"),
                      ],
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.people),
                        Text("128.000"),
                      ],
                    ),
                    Text("Tercukupi")
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
