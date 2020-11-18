import 'package:feis_mobile/bps/bps_detail_penduduk.dart';
import 'package:flutter/material.dart';

class BPSPenduduk extends StatefulWidget {
  @override
  _BPSPendudukState createState() => _BPSPendudukState();
}

class _BPSPendudukState extends State<BPSPenduduk> {
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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              tooltip: 'log out',
              onPressed: () {},
            ),
          ],
        ),
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
                      child: ListView(
                        children: <Widget>[
                          for (var i = 0; i < 20; i++) buildCard(),
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

  Card buildCard() {
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
                  Text("Jember"),
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
                          return BPSDetailpenduduk();
                        }));
                      }),
                ],
              )),
        ],
      ),
    );
  }
}
