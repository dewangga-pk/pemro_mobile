import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bappeda/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:flutter/material.dart';

class BappedaDataWilayahDetails extends StatelessWidget {
  final DocumentSnapshot ds;
  final DocumentSnapshot cs;
  const BappedaDataWilayahDetails(this.ds, this.cs);

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
                    colors: [Color(0xff2D2D2D), Color(0xff656565)],
                  )),
                  width: 145,
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/dataInfo.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Data Wilayah',
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
                        "Data Informasi Wilayah Jawa Timur",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 0.5,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(Icons.location_city),
                                    Text("Kota/Kabupaten"),
                                  ],
                                ),
                                Text(ds['name']),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 0.5,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text('Jumlah Penduduk'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(Icons.date_range),
                                    Text(ds['years'].toString()),
                                  ],
                                ),
                                Text(ds['population'].toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 0.5,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text('Hasil Panen'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(Icons.filter_vintage),
                                    Text(cs['food'] +
                                        "(" +
                                        cs['years'].toString() +
                                        ")"),
                                  ],
                                ),
                                Text(ds['yields'].toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 0.5,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text('Luas Lahan Pertanian'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(Icons.date_range),
                                    Text(ds['years'].toString()),
                                  ],
                                ),
                                Text(ds['farm'].toString() + " ha"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width / 0.5,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text('Tingkat Konsumsi'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(Icons.filter_vintage),
                                    Text(cs['food'] +
                                        "(" +
                                        cs['years'].toString() +
                                        ")"),
                                  ],
                                ),
                                Text(cs['rate'].toString() + " kg per kapita"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
