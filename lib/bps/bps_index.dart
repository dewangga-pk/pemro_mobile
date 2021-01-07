import 'package:feis_mobile/bps/bps_konsumsi.dart';
import 'package:feis_mobile/bps/bps_penduduk.dart';
import 'package:feis_mobile/bps/bps_pertanian.dart';
import 'package:feis_mobile/bps/layouts/appBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BPSIndex extends StatelessWidget {
  final User user;
  BPSIndex(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BPSAppBar().buildAppBar(context),
        body: Stack(children: <Widget>[
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
            margin: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(5),
                      color: Color(0xff2196F3),
                      onPressed: () async {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BPSPenduduk();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/penduduk.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Penduduk',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(5),
                      color: Color(0xff4CAF50),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BPSKonsumsi();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/Food.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Konsumsi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.all(5),
                      color: Color(0xffFFC107),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BPSPertanian();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/fields.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Pertanian',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
