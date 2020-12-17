import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:feis_mobile/litbang/layouts/appBar.dart';
import 'package:feis_mobile/litbang/litbang_field.dart';
import 'package:flutter/material.dart';

class LitbangTaniDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LitbangTaniAppBar().buildAppBar(context),
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
                    colors: [Color(0xff66CF1C), Color(0xff4C8A1F)],
                  )),
                  width: MediaQuery.of(context).size.width / 2.2,
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
                          'Tanaman Pangan',
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
                        "Data Tanaman Bahan Pangan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
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
                            child: Text("Detail Data Tanaman Bahan Pangan",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2.6,
                                margin: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.filter_vintage),
                                    Text("Tanaman Pangan"),
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text("Beras")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                margin: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.pie_chart_outlined),
                                    Text("Jumlah Konsumsi"),
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
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RaisedButton(
                                onPressed: () {
                                  Navigator.pop(context);
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
                                    return LitbangTaniField();
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
          ),
        ],
      ),
    );
  }
}
