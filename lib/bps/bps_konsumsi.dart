import 'package:flutter/material.dart';

class BPSKonsumsi extends StatefulWidget {
  @override
  _BPSKonsumsiState createState() => _BPSKonsumsiState();
}

class _BPSKonsumsiState extends State<BPSKonsumsi> {
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
            tooltip: 'Next page',
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
                        buildCard(),
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
                  Icon(Icons.filter_vintage),
                  Text("Beras"),
                ],
              )),
          Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Icon(Icons.local_dining),
                  Text("6.19"),
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
                    onPressed: () {},
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
