import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bps/bps_field_luaslahan.dart';
import 'package:feis_mobile/bps/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:flutter/material.dart';

class BPSLuasLahan extends StatefulWidget {
  @override
  _BPSLuasLahanState createState() => _BPSLuasLahanState();
}

class _BPSLuasLahanState extends State<BPSLuasLahan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BPSAppBar().buildAppBar(context),
      body: Stack(
        children: [
          Background().buildBackground(context),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xffFFC107), Color(0xff9D8439)],
                  )),
                  width: 145,
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/fields.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Pertanian',
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
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 0.65),
                      ),
                      child: Text(
                        "Data Luas Lahan Pertanian Jawa Timur",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: 320,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('city')
                            .snapshots(),
                        builder: (context, snapshot) {
                          return ListView.builder(
                              itemCount: snapshot.data.documents.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot ds =
                                    snapshot.data.documents[index];
                                return buildCard(ds);
                              });
                        }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card buildCard(DocumentSnapshot ds) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BPSLuasLahanField(ds);
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
                        Text(ds['name']),
                      ],
                    ),
                    Text(ds['years'].toString()),
                  ],
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Image(
                          image: AssetImage("images/luas_lahan_icon.png"),
                          width: 20,
                          height: 20,
                        ),
                        Text("Luas Lahan"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(ds['farm'].toString() + " ha"),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
