import 'package:feis_mobile/bappeda/layouts/appBar.dart';
import 'package:feis_mobile/bps/layouts/background.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart' as mb;

class BappedaPemerataanDetails extends StatefulWidget {
  final int population, yields;
  final double sumconsum;
  final String status, city;
  const BappedaPemerataanDetails(
      this.population, this.status, this.sumconsum, this.yields, this.city);

  @override
  _BappedaPemerataanDetailsState createState() =>
      _BappedaPemerataanDetailsState();
}

class _BappedaPemerataanDetailsState extends State<BappedaPemerataanDetails> {
  var token =
      'pk.eyJ1IjoiYW5kcm9tZWRhNTcwIiwiYSI6ImNram82YzJmdDZ0bTkyeWxndzhwcTByMHoifQ.A-lPALtNrAcHG5rdvMiC6g';

  mb.MapboxMapController mapController;

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
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xff1F266A), Color(0xff6A70AF)],
                  )),
                  width: 200,
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/pemerataan.png'),
                          width: 20,
                          height: 20,
                        ),
                        Text(
                          'Informasi Pemerataan',
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
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 255, 255, 0.65),
                      ),
                      child: Text(
                        "Informasi Pemerataan Pangan Jawa Timur",
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
                    child: ListView(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width / 0.5,
                          height: 140,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Text(widget.city),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(Icons.people),
                                      Text(
                                        "Jumlah Penduduk",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Text(widget.population.toString()),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(Icons.fastfood),
                                      Text(
                                        "Total Tingkat Konsumsi Penduduk",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Text(widget.sumconsum.toStringAsFixed(2) +
                                      " ton"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(Icons.filter_vintage),
                                      Text(
                                        "Jumlah Panen",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Text(widget.yields.toString() + " ton"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Icon(Icons.info),
                                      Text(
                                        "Status",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Text(widget.status),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                buildMap(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMap() {
    return Container(
      height: 100,
      child: mb.MapboxMap(
        accessToken: token,
        styleString: 'mapbox://styles/andromeda570/ckjo90z4y0mw619s3sxnio82l',
        initialCameraPosition: new mb.CameraPosition(
          target: mb.LatLng(-7.0285394, 112.7462689),
          zoom: 8,
        ),
        onMapCreated: mapCreated,
      ),
    );
  }

  void mapCreated(mb.MapboxMapController controller) {
    mapController = controller;

    var lokasi = mb.LatLng(-7.0285394, 112.7462689);

    mapController.addCircle(new mb.CircleOptions(
      circleRadius: 8,
      circleColor: 'blue',
      circleOpacity: 1,
      geometry: lokasi,
      draggable: false,
    ));
  }
}
