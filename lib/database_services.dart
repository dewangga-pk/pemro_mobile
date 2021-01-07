import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  static CollectionReference cityCollection =
      FirebaseFirestore.instance.collection("city");

  static CollectionReference consumCollection =
      FirebaseFirestore.instance.collection("konsumsi");

  static Future<void> createOrUpdateCity(String id,
      {String name, int population, int years}) async {
    await cityCollection
        .doc(id)
        .set({'name': name, 'population': population, 'years': years});
  }

  static Future<void> updateKonsumsi(String id,
      {String food, double rate}) async {
    await consumCollection
        .doc(id)
        .set({'food': food, 'rate': rate}, SetOptions(merge: true));
  }

  static Future<DocumentSnapshot> getCity(String id) async {
    return await cityCollection.doc(id).get();
  }
}
