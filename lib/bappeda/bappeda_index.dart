import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bappeda/bappeda_datawilayah.dart';
import 'package:feis_mobile/bappeda/bappeda_pemerataan.dart';
import 'package:feis_mobile/bappeda/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:feis_mobile/database_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Bappeda extends StatelessWidget {
  final User user;
  Bappeda(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BappedaAppBar().buildAppBar(context),
      body: Stack(
        children: [
          Background().buildBackground(context),
          Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Row(
                children: <Widget>[
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
                      color: Color(0xff155A90),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BappedaDataWilayah();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/dataInfo.png',
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            'Data Wilayah',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                      color: Color(0xff1F266A),
                      onPressed: () async {
                        DocumentSnapshot cs = await DatabaseServices.getConsum(
                            "ABcWq8lHaqT49OSf0pRB");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BappedaPemerataan(cs);
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/pemerataan.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Pemerataan',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
