import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_3_p extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_3_p> {


  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text('ਤੀਜੀ ਤਿਮਾਹੀ\n ਕਸਰਤ ਦੀਆਂ ਸਿਫ਼ਾਰਸ਼ਾਂ',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18.0)),
        actions: <Widget>[




        ],
      ),


      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 1,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[

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
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('ਤੀਜੀ ਤਿਮਾਹੀ\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),

                      Text('ਤੁਸੀਂ ਨਿਸ਼ਚਤ ਤੌਰ ਤੇ ਇੱਕ ਸੁਸਤੀ ਵੇਖੋਗੇ - ਜੇ ਕਦੇ-ਕਦਾਈਂ ਅਚਾਨਕ ਰੁਕ ਨਹੀਂ - ਤੀਜੀ ਤਿਮਾਹੀ ਦੇ ਦੌਰਾਨ, ਕਿਉਂਕਿ ਤੁਹਾਡਾ ਸਰੀਰ ਮਜ਼ਦੂਰੀ ਅਤੇ ਬੱਚੇ ਦੇ ਜਨਮ ਲਈ ਤਿਆਰੀ ਕਰਨਾ ਸ਼ੁਰੂ ਕਰਦਾ ਹੈ। ਇਹ ਕਾਰਡੀਓਵੈਸਕੁਲਰ ਗਤੀਵਿਧੀਆਂ ਤੇ ਧਿਆਨ ਕੇਂਦਰਿਤ ਕਰਨ ਅਤੇ ਆਪਣੀ ਗਤੀਸ਼ੀਲਤਾ ਅਤੇ ਪੇਟ ਦੀ ਤਾਕਤ ਨੂੰ ਇਸ ਨਾਲ ਬਣਾਈ ਰੱਖਣ ਦਾ ਵਧੀਆ ਸਮਾਂ ਹੈ:\n\n● ਸੈਰ ਕਰਨਾ\n\n● ਤੈਰਾਕੀ\n\n● ਜਨਮ ਤੋਂ ਪਹਿਲਾਂ ਯੋਗਾ\n\n● ਪਾਈਲੇਟਸ\n\n● ਪੇਲਵਿਕ ਫਲੋਰ ਦੀਆਂ ਕਸਰਤਾਂ\n\n● ਸਰੀਰ ਦੇ ਭਾਰ ਦੀ ਚਾਲ',
                      style:
                          TextStyle(color: Colors.black45,fontWeight: FontWeight.w700, fontSize: 14.0)),
                    ]),
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
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('ਸੂਮੋ ਸਕੁਐਟਸ\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Ink.image(
                        image : AssetImage('assets/images/t1.jpg'),
                        fit:BoxFit.cover,
                        width: MediaQuery.of(context).size.width*0.85,
                        height: 300,
                      ),

                    ]),
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
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('ਹਲਕੇ ਵਜ਼ਨ ਵਾਲੇ ਬਾਈਸੈਪ ਕਰਲ\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Ink.image(
                        image : AssetImage('assets/images/t2.jpg'),
                        fit:BoxFit.cover,
                        width: MediaQuery.of(context).size.width*0.85,
                        height: 300,
                      ),

                    ]),
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
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 16.0)),
                        Text('ਪਾਸੇ ਪਈਆਂ ਲੱਤਾਂ ਚੁੱਕਦੀਆਂ ਹਨ',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0)),
                        Ink.image(
                          image : AssetImage('assets/images/s3.jpg'),
                          fit:BoxFit.cover,
                          width: MediaQuery.of(context).size.width*0.9,
                          height: 200,
                        ),

                      ]),
                ),
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