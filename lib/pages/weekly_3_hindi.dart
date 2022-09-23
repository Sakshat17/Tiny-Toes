import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_3_h extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_3_h> {


  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text('तीसरी तिमाही\n व्यायाम अनुशंसाएँ',
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
                      Text('तीसरी तिमाही\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),

                      Text('तीसरी तिमाही के दौरान, आप निश्चित रूप से धीमी गति से ध्यान देंगी - यदि कभी-कभी अचानक नहीं रुकती हैं, क्योंकि आपका शरीर प्रसव और प्रसव के लिए तैयार होना शुरू कर देता है। यह कार्डियोवैस्कुलर गतिविधियों पर ध्यान केंद्रित करने और अपनी गतिशीलता और पेट की ताकत को बनाए रखने का एक अच्छा समय है:\n\n● चलना\n\n● तैराकी\n\n● प्रसव पूर्व योग\n\n● पिलेट्स\n\n● पेल्विक फ्लोर एक्सरसाइज\n\n● बॉडीवेट मूव्स',
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
                      Text('सूमो स्क्वाट\n',
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
                      Text('हल्के वजन के साथ बाइसेप कर्ल\n',
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
                        Text('अगल-बगल पैर उठाना',
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