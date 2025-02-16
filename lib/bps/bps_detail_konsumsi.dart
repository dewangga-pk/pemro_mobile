import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bps/bps_field_konsumsi.dart';
import 'package:feis_mobile/bps/layouts/appBar.dart';
import 'package:flutter/material.dart';

class BPSDetailKonsumsi extends StatefulWidget {
  final DocumentSnapshot data;
  const BPSDetailKonsumsi(this.data);
  @override
  _BPSDetailKonsumsiState createState() => _BPSDetailKonsumsiState();
}

class _BPSDetailKonsumsiState extends State<BPSDetailKonsumsi> {
  @override
  Widget build(BuildContext context) {
    var years = widget.data['years'].toString();
    var rate = widget.data['rate'].toString();
    var food = widget.data['food'];
    return Scaffold(
      appBar: BPSAppBar().buildAppBar(context),
      body: Stack(
        children: <Widget>[
          Column(children: <Widget>[
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
          ]),
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
                    colors: [Color(0xff4AA84C), Color(0xff01455B)],
                  )),
                  width: 145,
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/Food.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Konsumsi',
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
                        "Data Konsumsi(kg per kapita)",
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
                            child: Text("Detail Data Konsumsi Penduduk",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.filter_vintage),
                                    Text("Jenis Pangan"),
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(food)),
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
                                    Image(
                                      image:
                                          AssetImage("images/spoon_fork.png"),
                                      width: 20,
                                      height: 20,
                                    ),
                                    Text("Jumlah Konsumsi"),
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(rate)),
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
                                child: Text(years)),
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
                                    return BPSKonsumsiField(widget.data);
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
      ),
    );
  }
}
