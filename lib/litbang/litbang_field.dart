import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:feis_mobile/litbang/layouts/appBar.dart';
import 'package:flutter/material.dart';

class LitbangTaniField extends StatefulWidget {
  @override
  _LitbangTaniFieldState createState() => _LitbangTaniFieldState();
}

class _LitbangTaniFieldState extends State<LitbangTaniField> {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LitbangTaniAppBar().buildAppBar(context),
      body: Stack(
        children: [
          Background().buildBackground(context),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xff66CF1C), Color(0xff4C8A1F)],
                  )),
                  width: MediaQuery.of(context).size.width / 2.2,
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
                          'Tanaman Pangan',
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
                        "Data Tanaman Bahan Pangan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 2.8,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(208, 208, 208, 0.9),
                      border: Border.all(color: Colors.grey[100]),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Text("Ubah Data Tanaman Bahan Pangan",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            icon: Icon(Icons.filter_vintage),
                            labelText: "Jenis Pangan",
                          ),
                        ),
                        TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            icon: Icon(Icons.pie_chart_outlined),
                            labelText: "Rata-rata hasil (ton/ha)",
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                color: Color(0xffD8544F),
                                child: Text(
                                  "Batal",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return null;
                                  }));
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                color: Color(0xff3F936D),
                                child: Text(
                                  "Simpan",
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
          ),
        ],
      ),
    );
  }
}
