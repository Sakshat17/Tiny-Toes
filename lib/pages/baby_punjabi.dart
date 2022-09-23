
import 'package:Tiny_Toes/pages/BabyCare/Breastfeeding_pun.dart';
import 'package:Tiny_Toes/pages/BabyCare/DangerSignspun.dart';
import 'package:Tiny_Toes/pages/BabyCare/Immunization_pun.dart';
import 'package:Tiny_Toes/pages/BabyCare/general_pun.dart';
import 'package:Tiny_Toes/pages/BabyCare/hygiene_pun.dart';
import 'package:Tiny_Toes/pages/BabyCare/milestones_pun.dart';
import 'package:Tiny_Toes/pages/BabyCare/play_com_pun.dart';
import 'package:Tiny_Toes/pages/BabyCare/soothing_pun.dart';
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

class BabyCare_punjabi extends StatefulWidget {
  @override
  _BabyCare createState() => _BabyCare();
}

class _BabyCare extends State<BabyCare_punjabi> {

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
          title: Text('ਨਵਜਾਤ ਦੀ ਦੇਖਭਾਲ',
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
                        Text('ਛਾਤੀ ਦਾ ਦੁੱਧ ਚੁੰਘਾਉਣ ਦੀ ਜਾਣਕਾਰੀ',
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
                    .push(MaterialPageRoute(builder: (_) => breastfeed_pun())),
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
                        Text('ਨਵਜੰਮੇ ਬੱਚਿਆਂ ਵਿੱਚ ਖ਼ਤਰੇ ਦੇ ਚਿੰਨ੍ਹ',
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
                    .push(MaterialPageRoute(builder: (_) => danger_pun())),
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
                        Text('ਨਵਜੰਮੇ ਸਫਾਈ',
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
                    .push(MaterialPageRoute(builder: (_) => hygiene_pun())),
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
                        Text('ਟੀਕਾਕਰਨ',
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
                    .push(MaterialPageRoute(builder: (_) => immunization_pun())),
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
                        Text('ਖੇਡੋ ਅਤੇ ਸੰਚਾਰ',
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
                    .push(MaterialPageRoute(builder: (_) => play_com_pun())),
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
                        Text('ਤੁਹਾਡੇ ਬੱਚੇ ਨੂੰ ਸ਼ਾਂਤ ਕਰਨਾ',
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
                    .push(MaterialPageRoute(builder: (_) => soothing_pun())),
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
                        Text('ਨਵਜੰਮੇ ਬੱਚੇ ਦੀ ਆਮ ਤੰਦਰੁਸਤੀ',
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
                    .push(MaterialPageRoute(builder: (_) => general_pun())),
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
                        Text('ਮੀਲਪੱਥਰ - ਪ੍ਰਾਪਤ ਕੀਤਾ ਅਤੇ ਖੁੰਝ ਗਿਆ',
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
                    .push(MaterialPageRoute(builder: (_) => milestone_pun())),
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