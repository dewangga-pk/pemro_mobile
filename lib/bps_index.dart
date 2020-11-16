import 'package:feis_mobile/bps_penduduk.dart';
import 'package:flutter/material.dart';

class BPSIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0309B7),
          title: Row(
            children: <Widget>[
              Image(image: AssetImage('images/BPS.png')),
              Text('BPS')
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Go to Home Page',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
        ),
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
                      onPressed: () {
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
                      onPressed: () {},
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
                      onPressed: () {},
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
