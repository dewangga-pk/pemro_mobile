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
        .update({'name': name, 'population': population, 'years': years});
  }

  static Future<void> updateKonsumsi(String id,
      {String food, double rate}) async {
    await consumCollection.doc(id).update({'food': food, 'rate': rate});
  }

  static Future<void> updateFarm(String id, {double luas}) async {
    await cityCollection.doc(id).update({'farm': luas});
  }

  static Future<void> updateYields(String id, {int result}) async {
    await cityCollection.doc(id).update({'yields': result});
  }

  static Future<void> updateHarvest(String id, {double harvest}) async {
    await consumCollection.doc(id).update({'average_harvest': harvest});
  }

  static Future<DocumentSnapshot> getCity(String id) async {
    return await cityCollection.doc(id).get();
  }
}
