import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class add_details with ChangeNotifier {
  String _name = "";
  String _home = "";
  String _cell = "";

  String get name => _name;
  String get homee => _home;
  String get cell => _cell;

  void set_name(String a) {
    this._name = a;
    notifyListeners();
  }

  void set_home(String a) {
    this._home = a;
    notifyListeners();
  }

  void set_cell(String a) {
    this._cell = a;
    notifyListeners();
  }

  Future<void> add() async {
    try {
      Map<String, dynamic> data = {
        "name": _name,
        "home": _home,
        "cell": _cell,
      };
      FirebaseFirestore.instance.collection("Contacts").add(data);
      print("Successful");
      notifyListeners();
    } catch (e) {
      print("Error" + e.toString());
      notifyListeners();
    }
  }
}
