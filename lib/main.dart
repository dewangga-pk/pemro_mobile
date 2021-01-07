import 'package:feis_mobile/auth_services.dart';
// import 'package:feis_mobile/database_services.dart';
import 'package:feis_mobile/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
    // var city = [
    //   "Kab Bangkalan",
    //   "Kab Banyuwangi",
    //   "Kab Blitar",
    //   "Kab Bojonegoro",
    //   "Kab Bondowoso",
    //   "Kab Gresik",
    //   "Kab Jember",
    //   "Kab Jombang",
    //   "Kab Kediri",
    //   "Kab Lamongan",
    //   "Kab Lumajang",
    //   "Kab Madiun",
    //   "Kab Magetan",
    //   "Kab Malang",
    //   "Kab Mojokerto",
    //   "Kab Nganjuk",
    //   "Kab Ngawi",
    //   "Kab Pamekasan",
    //   "Kab Pacitan",
    //   "Kab Pasuruan",
    //   "Kab Ponorogo",
    //   "Kab Probolinggo",
    //   "Kab Sampang",
    //   "Kab Sidoarjo",
    //   "Kab Situbondo",
    //   "Kab Sumenep",
    //   "Kab Trenggalek",
    //   "Kab Tuban",
    //   "Kab Tulungaung",
    //   "Kota Batu",
    //   "Kota Blitar",
    //   "Kota Kediri",
    //   "Kota Madiun",
    //   "Kota Malang",
    //   "Kota Mojokerto",
    //   "Kota Pasuruan",
    //   "Kota Probolinggo",
    //   "Kota Surabaya"
    // ];
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: Container(
    //       child: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             RaisedButton(
    //                 child: Text("Add data"),
    //                 onPressed: () {
    //                   for (var i = 0; i < 38; i++) {
    //                     DatabaseServices.createOrUpdateCity((i + 1).toString(),
    //                         name: city[i]);
    //                   }
    //                 }),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
