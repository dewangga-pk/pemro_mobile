import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  static CollectionReference cityCollection =
      FirebaseFirestore.instance.collection("city");

  static Future<void> createOrUpdateCity(String id,
      {String name, int population, int years}) async {
    await cityCollection.doc(id).set(
        {'name': name, 'population': population, 'years': years},
        SetOptions(merge: true));
  }

  static Future<DocumentSnapshot> getCity(String id) async {
    return await cityCollection.doc(id).get();
  }
}
