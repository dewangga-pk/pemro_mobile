import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/database_services.dart';
import 'package:flutter/material.dart';

import 'layouts/appBar.dart';
import 'layouts/background.dart';

class BPSHasilPanenField extends StatefulWidget {
  final DocumentSnapshot data;
  const BPSHasilPanenField(this.data);
  @override
  _BPSHasilPanenFieldState createState() => _BPSHasilPanenFieldState();
}

class _BPSHasilPanenFieldState extends State<BPSHasilPanenField> {
  TextEditingController cityController = new TextEditingController();
  TextEditingController yieldsController = new TextEditingController();
  TextEditingController yearsController = new TextEditingController();
  TextEditingController foodController = new TextEditingController();

  @override
  void initState() {
    yearsController.text = widget.data['years'].toString();
    yieldsController.text = widget.data['yields'].toString();
    cityController.text = widget.data['name'];
    foodController.text = "Beras";
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
                        "Data Hasil Panen Pangan Jawa Timur",
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
                    height: MediaQuery.of(context).size.height / 1.8,
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
                            child: Text("Ubah Data Hasil Panen",
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
                          readOnly: true,
                          controller: foodController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.filter_vintage),
                            labelText: "Jenis Pangan",
                          ),
                        ),
                        TextField(
                          controller: yieldsController,
                          decoration: InputDecoration(
                            icon: ImageIcon(
                                AssetImage("images/jumlah_panen.png")),
                            labelText: "Hasil Panen",
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
                                  await DatabaseServices.updateYields(
                                      widget.data.id,
                                      result: int.parse(yieldsController.text));
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
