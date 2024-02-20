import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class StopsListProvider extends ChangeNotifier{
  List<String> fruitNames = [];
  List<String> res=[];

  Future<void> loadFruits() async {
    try {
      // Retrieve the fruit list from Firestore
      DocumentSnapshot documentSnapshot =
      await FirebaseFirestore.instance.collection('bus_routes').doc(
          'stops_info').get();

      if (documentSnapshot.exists && fruitNames.isEmpty) {
        // Extract the fruitNames field from the document
        List<dynamic>? fruits = documentSnapshot['stops_list'];

        fruits?.forEach((element) {
          fruitNames.add(element);
        });
        notifyListeners();
      }
    } catch (e) {
      print('Error loading fruits: $e');
    }
  }
    void changeHandler(String value) {
      res.clear();
      for (var element in fruitNames) {
        if (element.toLowerCase().contains(value)) {
          res.add(element);
        }
      }
      notifyListeners();
    }
}