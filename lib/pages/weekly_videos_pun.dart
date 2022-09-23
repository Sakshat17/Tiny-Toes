import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:Tiny_Toes/pages/weekly_1.dart';
import 'package:Tiny_Toes/pages/weekly_1_pun.dart';
import 'package:Tiny_Toes/pages/weekly_2.dart';
import 'package:Tiny_Toes/pages/weekly_2_pun.dart';
import 'package:Tiny_Toes/pages/weekly_3.dart';
import 'package:Tiny_Toes/pages/weekly_3_pun.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_pun extends StatefulWidget {


  @override
  _videos_punState createState() => _videos_punState();
}

class _videos_punState extends State<videos_pun> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          backgroundColor: Colors.lightBlue,
          title: Text('ਤਿਮਾਹੀ-ਵਾਰ\n ਕਸਰਤ ਦੀਆਂ ਸਿਫ਼ਾਰਸ਼ਾਂ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0)),
          actions: <Widget>[




          ],
        ),


        body: StaggeredGrid.count(
          crossAxisCount: 1,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Material(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(24.0),
                              child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Icon(Icons.favorite,
                                        color: Colors.white, size: 30.0),
                                  ))),
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          Text('ਪਹਿਲੀ ਤਿਮਾਹੀ',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24)),
                          Text('',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,

                                  fontWeight: FontWeight.w700,
                                  fontSize: 7.0))
                        ],
                      ),

                    ]),
              ),
              onTap: () =>
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => videos_1_pun()),
                  ),

            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                          color: Colors.teal,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.favorite,
                                color: Colors.white, size: 30.0),
                          )),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('ਦੂਜੀ ਤਿਮਾਹੀ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Text('',
                          style:
                          TextStyle(color: Colors.black45, fontSize: 10.0)),
                    ]),
              ),
              onTap: () =>
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => videos_2_p()),
                  ),
            ),
            _buildTile(
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.amber,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(Icons.favorite,
                                  color: Colors.white, size: 30.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 16.0)),
                        Text('ਤੀਜੀ ਤਿਮਾਹੀ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 11.0)),
                      ]),
                ),
                onTap: () =>
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => videos_3_p()),

                    )),

          ],
          // staggeredTiles: [
          //   StaggeredTile.extent(2, 110.0),
          //   StaggeredTile.extent(1, 180.0),
          //   StaggeredTile.extent(1, 180.0),
          //   StaggeredTile.extent(2, 220.0),
          //   StaggeredTile.extent(2, 110.0),
          //   StaggeredTile.extent(2, 110.0),
          // ],
        ));
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
              print('Not set yet');
            },
            child: child));
  }
}