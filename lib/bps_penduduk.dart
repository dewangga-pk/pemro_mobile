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
              icon: Image.asset('images/logout.png'),
              tooltip: 'Next page',
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: Column(
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
              )
            ],
          ),
        ));
  }
}
