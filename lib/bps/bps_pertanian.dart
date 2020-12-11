import 'package:flutter/material.dart';

class BPSPertanian extends StatelessWidget {
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
                          return null;
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
                          return null;
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
