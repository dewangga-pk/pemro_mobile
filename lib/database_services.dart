import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  static CollectionReference cityCollection =
      FirebaseFirestore.instance.collection("city");

  static Future<void> createOrUpdateCity(String id, {String name}) async {
    await cityCollection.doc(id).set({'name': name}, SetOptions(merge: true));
  }
}
