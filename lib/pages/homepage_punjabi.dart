import 'dart:async';
import 'package:Tiny_Toes/pages/add_pun.dart';
import 'package:flutter/material.dart';
import 'package:Tiny_Toes/pages/weightSave.dart';
import 'package:Tiny_Toes/pages/weightListItem.dart';
import 'package:Tiny_Toes/pages/addEntryDialog.dart';

class HomePage_pun extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage_pun> {
  List<WeightSave> _weightSaves = [];

  Future _addWeight () async {
    WeightSave newEntry = await Navigator.of(context).push(new MaterialPageRoute<WeightSave>(
        builder: (BuildContext context) {
          return AddEntryDialog_p();
        },
        fullscreenDialog: true
    ));
    if (newEntry != null) {
      setState(() {
        _weightSaves.add(newEntry);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ਭਾਰ ਟਰੈਕਰ'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _weightSaves.length,
        itemBuilder: (context, indice) {
          bool isFirstWeight = indice == 0;
          WeightSave weightSave = _weightSaves[indice];
          double difference = isFirstWeight ? 0.0 : weightSave.weight - _weightSaves[indice - 1].weight;

          return WeightListItem(weightSave, difference);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addWeight,
        child: Icon(Icons.add),
      ),
    );
  }
}