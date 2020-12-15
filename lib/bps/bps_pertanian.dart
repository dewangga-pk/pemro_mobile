import 'package:feis_mobile/bps/bps_hasilpanen.dart';
import 'package:feis_mobile/bps/bps_luaslahan.dart';
import 'package:feis_mobile/bps/layouts/appBar.dart';
import 'package:flutter/material.dart';

class BPSPertanian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              ],
            ),
          ),
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
                      color: Color(0xffAACC38),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BPSHasilPanen();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/hasilpanen.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Hasil Panen',
                            style: TextStyle(color: Colors.white),
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
                      color: Color(0xff4CAF50),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BPSLuasLahan();
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset(
                            'images/luaslahan.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Luas Lahan',
                            style: TextStyle(color: Colors.white),
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
