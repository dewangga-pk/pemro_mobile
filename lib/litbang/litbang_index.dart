import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:feis_mobile/litbang/layouts/appBar.dart';
import 'package:feis_mobile/litbang/litbang_detail.dart';
import 'package:flutter/material.dart';

class LitbangTani extends StatelessWidget {
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
              children: <Widget>[
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
                Expanded(
                  child: Container(
                    width: 320,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: ListView(
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LitbangTaniDetails();
                              }));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Icon(Icons.filter_vintage),
                                            Text("Jenis Tanaman Pangan"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Beras"),
                                          ],
                                        )
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Icon(Icons.pie_chart_outlined),
                                            Text("Rata-rata hasil(ton/ha)"),
                                          ],
                                        ),
                                        Text("7.5"),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
