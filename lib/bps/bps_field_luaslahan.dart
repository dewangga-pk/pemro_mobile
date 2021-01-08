import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/database_services.dart';
import 'package:flutter/material.dart';

import 'layouts/appBar.dart';
import 'layouts/background.dart';

class BPSLuasLahanField extends StatefulWidget {
  final DocumentSnapshot data;
  const BPSLuasLahanField(this.data);
  @override
  _BPSLuasLahanFieldState createState() => _BPSLuasLahanFieldState();
}

class _BPSLuasLahanFieldState extends State<BPSLuasLahanField> {
  TextEditingController cityController = new TextEditingController();
  TextEditingController farmController = new TextEditingController();
  TextEditingController yearsController = new TextEditingController();

  @override
  void initState() {
    yearsController.text = widget.data['years'].toString();
    farmController.text = widget.data['farm'].toString();
    cityController.text = widget.data['name'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BPSAppBar().buildAppBar(context),
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
                        "Data Luas Lahan Pertanian Jawa Timur",
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
                    height: MediaQuery.of(context).size.height / 2.2,
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
                            child: Text("Ubah Data Luas Lahan",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
                          ),
                        ),
                        TextField(
                          readOnly: true,
                          controller: cityController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.location_city),
                            labelText: "Kota",
                          ),
                        ),
                        TextField(
                          controller: farmController,
                          decoration: InputDecoration(
                            icon: ImageIcon(
                                AssetImage("images/luas_lahan_icon.png")),
                            labelText: "Luas Lahan",
                          ),
                        ),
                        TextField(
                          readOnly: true,
                          controller: yearsController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.date_range),
                            labelText: "Tahun",
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
                                onPressed: () async {
                                  await DatabaseServices.updateFarm(
                                      widget.data.id,
                                      luas: double.parse(farmController.text));
                                  Navigator.pop(context);
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
