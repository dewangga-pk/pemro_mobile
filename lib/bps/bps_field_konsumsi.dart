import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../database_services.dart';
import 'layouts/appBar.dart';
import 'layouts/background.dart';

class BPSKonsumsiField extends StatefulWidget {
  final DocumentSnapshot data;
  const BPSKonsumsiField(this.data);
  @override
  _BPSKonsumsiFieldState createState() => _BPSKonsumsiFieldState();
}

class _BPSKonsumsiFieldState extends State<BPSKonsumsiField> {
  TextEditingController rateController = new TextEditingController();
  TextEditingController yearsController = new TextEditingController();
  TextEditingController foodController = new TextEditingController();

  @override
  void initState() {
    yearsController.text = widget.data['years'].toString();
    foodController.text = widget.data['food'];
    rateController.text = widget.data['rate'].toString();
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
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 0.65),
                      ),
                      child: Text(
                        "Data Konsumsi(kg per kapita)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
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
                            child: Text("Ubah Data Tingkat Konsumsi",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center),
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
                          controller: rateController,
                          decoration: InputDecoration(
                            icon:
                                ImageIcon(AssetImage("images/spoon_fork.png")),
                            labelText: "Jumlah Konsumsi",
                          ),
                        ),
                        TextField(
                          controller: yearsController,
                          readOnly: true,
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
                                  await DatabaseServices.updateKonsumsi(
                                      widget.data.id,
                                      food: foodController.text,
                                      rate: double.parse(rateController.text));
                                  Navigator.pop(context);
                                  print(widget.data.id);
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
