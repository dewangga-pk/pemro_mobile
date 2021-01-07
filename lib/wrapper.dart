import 'package:feis_mobile/bappeda/bappeda_index.dart';
import 'package:feis_mobile/bps/bps_index.dart';
import 'package:feis_mobile/litbang/litbang_index.dart';
import 'package:feis_mobile/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    Widget result;
    if (firebaseUser != null) {
      String uid = firebaseUser.uid;
      if (uid == "IcwF16EwjHN0qptQyeljgvCAsse2") {
        result = BPSIndex(firebaseUser);
      } else if (uid == "ToOYEs9S5lg02O5mIe3XdO33uks1") {
        result = LitbangTani(firebaseUser);
      } else {
        result = Bappeda(firebaseUser);
      }
    } else {
      result = Login();
    }
    return result;
  }
}
