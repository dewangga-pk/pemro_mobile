import 'package:flutter/material.dart';

class BPSCardList {
  Container buildContainer(context, String title, int color1, int color2) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(color1), Color(color2)],
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
                    title,
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                  buildCard(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card buildCard(context) {
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return null;
                        }));
                      }),
                ],
              )),
        ],
      ),
    );
  }
}
