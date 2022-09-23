import 'package:flutter/material.dart';
import 'package:Tiny_Toes/pages/sleep_record.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SleepRecordList extends ChangeNotifier {
  List<SleepRecord> sleepRecordList = [];

  Future<void> _uploadCartToFirebase(List<SleepRecord> cartList) async {
    for(SleepRecord cartItem in cartList) {
      print(1);
      await FirebaseFirestore.instance.collection('OrderID').doc()
          .set(cartItem.toJson());
    }
  }
  Future<List<SleepRecord>> _getCartList() async {
    final querySnapshot = await FirebaseFirestore.instance.
    collection('OrderID').get();
    List<QueryDocumentSnapshot> docs = querySnapshot.docs;
    final cartList = docs.map((doc) =>
        SleepRecord.fromJson(doc.data())).toList();
    // print(cartList);
    return cartList;
  }

  void addRecordAtFirsPosition(SleepRecord sleepRecord) {
    sleepRecordList.insert(0, sleepRecord);
    _uploadCartToFirebase(sleepRecordList);
    notifyListeners();
  }

  SleepRecord getElementAtIndex(int index) {
    // List<SleepRecord> sleepRecordList= await _getCartList();
    return sleepRecordList.elementAt(index);
  }

  int getListLength() {
    // sleepRecordList=_getCartList();
    // List<SleepRecord> sleepRecordList= await _getCartList();
    return sleepRecordList.length;
  }
}