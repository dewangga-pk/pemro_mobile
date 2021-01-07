import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bps/bps_field_penduduk.dart';
import 'package:feis_mobile/bps/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:flutter/material.dart';

import '../database_services.dart';

class BPSDetailpenduduk extends StatefulWidget {
  final DocumentSnapshot snapshot;
  const BPSDetailpenduduk(this.snapshot);
  @override
  _BPSDetailpendudukState createState() => _BPSDetailpendudukState();
}

class _BPSDetailpendudukState extends State<BPSDetailpenduduk> {
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
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 3.2,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white70,
                        border: Border.all(color: Colors.grey[300]),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 25),
                              child: Text("Detail Data Penduduk",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 6,
                                  margin: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.location_city),
                                      Text("Kota"),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(widget.snapshot['name'])),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  margin: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.people),
                                      Text("Jumlah Penduduk"),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("1287882")),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 5,
                                  margin: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.date_range),
                                      Text("Tahun")
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("2019")),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RaisedButton(
                                  onPressed: () async {
                                    DocumentSnapshot snapshot =
                                        await DatabaseServices.getCity(
                                            widget.snapshot.id);
                                    print(snapshot.data());
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color(0xff368ABB),
                                  child: Text(
                                    "Kembali",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return BPSPendudukField(widget.snapshot);
                                    }));
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color(0xff3F936D),
                                  child: Text(
                                    "Ubah",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
