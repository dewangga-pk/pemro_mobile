import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:feis_mobile/bappeda/bappeda_datawilayah_details.dart';
import 'package:feis_mobile/bappeda/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:feis_mobile/database_services.dart';
import 'package:flutter/material.dart';

class BappedaDataWilayah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BappedaAppBar().buildAppBar(context),
      body: Stack(
        children: [
          Background().buildBackground(context),
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
                    colors: [Color(0xff2D2D2D), Color(0xff656565)],
                  )),
                  width: 145,
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/dataInfo.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Data Wilayah',
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
                        "Data Informasi Wilayah Jawa Timur",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: 320,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('city')
                            .snapshots(),
                        builder: (context, snapshot) {
                          return ListView.builder(
                            itemCount: snapshot.data.documents.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot ds =
                                  snapshot.data.documents[index];
                              return buildCard(context, ds);
                            },
                          );
                        }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card buildCard(BuildContext context, DocumentSnapshot ds) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () async {
          DocumentSnapshot cs =
              await DatabaseServices.getConsum("ABcWq8lHaqT49OSf0pRB");
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BappedaDataWilayahDetails(ds, cs);
          }));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        Text(ds['name']),
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage("images/luas_lahan_icon.png"),
                          width: 20,
                          height: 20,
                        ),
                        Text(ds['farm'].toString() + " ha"),
                      ],
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.people),
                        Text(ds['population'].toString()),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.filter_vintage),
                        Text(ds['yields'].toString() + " ton"),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
