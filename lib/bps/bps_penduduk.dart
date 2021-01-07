import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bps/bps_detail_penduduk.dart';
import 'package:feis_mobile/bps/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:flutter/material.dart';

class BPSPenduduk extends StatefulWidget {
  @override
  _BPSPendudukState createState() => _BPSPendudukState();
}

class _BPSPendudukState extends State<BPSPenduduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BPSAppBar().buildAppBar(context),
        body: Stack(
          children: <Widget>[
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
                      colors: [Color(0xff2196F3), Color(0xff014E6B)],
                    )),
                    width: 145,
                    height: 40,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/penduduk.png'),
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            'Penduduk',
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
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 255, 255, 0.65),
                        ),
                        child: Text(
                          "Data Penduduk Jawa Timur",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
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
                                DocumentSnapshot city =
                                    snapshot.data.documents[index];
                                return buildCard(city);
                              });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Card buildCard(DocumentSnapshot ds) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_city),
                  Text(ds['name']),
                ],
              )),
          Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Icon(Icons.people_outline),
                  Text("128900"),
                ],
              )),
          Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.green,
                      ),
                      tooltip: 'Detail',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BPSDetailpenduduk(ds);
                        }));
                      }),
                ],
              )),
        ],
      ),
    );
  }
}
