
import 'package:Tiny_Toes/pages/BabyCare/Immunization_hindi.dart';
import 'package:Tiny_Toes/pages/BabyCare/breastfeed_hindi.dart';
import 'package:Tiny_Toes/pages/BabyCare/general_hindi.dart';
import 'package:Tiny_Toes/pages/BabyCare/hygiene_hindiy.dart';
import 'package:Tiny_Toes/pages/BabyCare/milestones_hindi.dart';
import 'package:Tiny_Toes/pages/BabyCare/play_com_hindi.dart';
import 'package:Tiny_Toes/pages/BabyCare/soothing_hindi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:Tiny_Toes/pages/BabyCare/Breastfeeding.dart';
import 'package:Tiny_Toes/pages/BabyCare/DangerSigns.dart';
import 'package:Tiny_Toes/pages/BabyCare/hygiene.dart';
import 'package:Tiny_Toes/pages/BabyCare/Immunization.dart';
import 'package:Tiny_Toes/pages/BabyCare/play_com.dart';
import 'package:Tiny_Toes/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'BabyCare/DangerSigns_hindi.dart';

class BabyCare_hindi extends StatefulWidget {
  @override
  _BabyCare createState() => _BabyCare();
}

class _BabyCare extends State<BabyCare_hindi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.lightBlue[200],
          leading: IconButton(
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text('नवजात देखभाल',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),

        ),
        body:
        SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 1,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 16.0,
            //padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            children: <Widget>[
              const Image(
                image: NetworkImage('https://www.santoshhospitalzirakpur.com/wp-content/uploads/2017/09/baby-care-basics.jpg'),
              ),

              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.red,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(Icons.favorite,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('स्तनपान की जानकारी',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 10.0)),
                      ]),

                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => breastfeed_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.blue,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(Icons.dangerous_outlined,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('नवजात शिशुओं में खतरे के संकेत',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 10.0)),
                      ]),

                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => danger_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.green,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(Icons.baby_changing_station,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('नवजात स्वच्छता',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 10.0)),
                      ]),

                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => hygiene_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.amber,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(Icons.local_hospital ,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('टीकाकरण',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 10.0)),
                      ]),

                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => immunization_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.pink,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(Icons.bedroom_baby,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('खेल और संचार',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 10.0)),
                      ]),

                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => play_com_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.cyan,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.baby_changing_station,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('अपने बच्चे को शांत करना',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 11.0)),
                      ]),
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => soothing_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.purple,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.local_hospital,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('नवजात शिशु का सामान्य स्वास्थ्य',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 11.0)),
                      ]),
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => general_hindi())),
              ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.orange,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.notifications,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        Text('माइलस्टोन - हासिल और चूके',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 11.0)),
                      ]),
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => milestone_hindi())),
              ),



            ],
            // staggeredTiles: [
            //   StaggeredTile.extent(2, 110.0),
            //   StaggeredTile.extent(1, 180.0),
            //   StaggeredTile.extent(1, 180.0),
            //   StaggeredTile.extent(2, 220.0),
            //   StaggeredTile.extent(2, 110.0),
            //   StaggeredTile.extent(2, 110.0),
            // ],
          ),
        )



    );




  }
  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.lightBlue[50],
        shadowColor: Color(0x802196F3),
        child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
              print('Not set yet');
            },
            child: child));
  }}