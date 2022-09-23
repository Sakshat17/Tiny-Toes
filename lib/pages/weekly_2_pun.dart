import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_2_p extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_2_p> {


  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text('ਦੂਜੀ ਤਿਮਾਹੀ\n ਕਸਰਤ ਦੀਆਂ ਸਿਫ਼ਾਰਸ਼ਾਂ',
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
                      Text('ਇਨਕਲਾਈਨ ਪੁਸ਼ਅਪਸ\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Ink.image(
                        image : AssetImage('assets/images/s1.jpg'),
                        fit:BoxFit.cover,
                        width: MediaQuery.of(context).size.width*0.85,
                        height: 300,
                      ),
                      Text('\nਕਿਸੇ ਕਿਨਾਰੇ ਜਾਂ ਰੇਲਿੰਗ ਦਾ ਸਾਹਮਣਾ ਕਰਦੇ ਹੋਏ ਖੜ੍ਹੇ ਹੋਵੋ ਅਤੇ ਆਪਣੇ ਹੱਥਾਂ ਨੂੰ ਮੋਢੇ ਦੀ ਚੌੜਾਈ ਨੂੰ ਸਤ੍ਹਾ ਤੇ ਰੱਖੋ।\n\nਆਪਣੇ ਸਰੀਰ ਨੂੰ ਇੱਕ ਸਿੱਧੀ ਲਾਈਨ ਵਿੱਚ ਆਪਣੀ ਪਿੱਠ ਦੇ ਨਾਲ ਇੱਕ ਖੜ੍ਹੀ ਤਖ਼ਤੀ ਵਾਲੀ ਸਥਿਤੀ ਵਿੱਚ ਵਾਪਸ ਜਾਓ।\n\nਆਪਣੀਆਂ ਬਾਹਾਂ ਨੂੰ ਮੋੜੋ ਅਤੇ ਹੌਲੀ-ਹੌਲੀ ਆਪਣੀ ਛਾਤੀ ਨੂੰ ਹੇਠਾਂ ਕਰੋ। ਰੇਲਿੰਗ ਜਾਂ ਕਿਨਾਰੇ ਵੱਲ।\n\nਸ਼ੁਰੂਆਤੀ ਸਥਿਤੀ ਤੇ ਵਾਪਸ ਜਾਣ ਲਈ ਆਪਣੀਆਂ ਬਾਹਾਂ ਨੂੰ ਸਿੱਧਾ ਕਰੋ।\n\n10 ਤੋਂ 12 ਦੁਹਰਾਓ ਦੇ 2 ਸੈੱਟ ਕਰੋ।',
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
                      Text('ਹਿਪ ਫਲੈਕਸਰ ਅਤੇ ਕਵਾਡ੍ਰਿਸਪਸ ਸਟ੍ਰੈਚ\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Ink.image(
                        image : AssetImage('assets/images/s2.jpg'),
                        fit:BoxFit.cover,
                        width: MediaQuery.of(context).size.width*0.85,
                        height: 300,
                      ),
                      Text('\nਫਰਸ਼ ਤੇ ਅੱਧੇ ਗੋਡੇ ਟੇਕਣ ਦੀ ਸਥਿਤੀ ਵਿੱਚ ਜਾਓ। ਆਪਣਾ ਸੱਜਾ ਗੋਡਾ ਫਰਸ਼ ਤੇ ਰੱਖੋ ਅਤੇ ਆਪਣਾ ਖੱਬਾ ਪੈਰ ਆਪਣੇ ਸਾਹਮਣੇ, ਖੱਬਾ ਪੈਰ ਫਰਸ਼ ਤੇ ਫਲੈਟ ਰੱਖੋ।\n\nਆਪਣੀ ਸਥਿਤੀ ਨੂੰ ਵਧੀਆ ਅਤੇ ਉੱਚਾ ਰੱਖਦੇ ਹੋਏ, ਆਪਣੇ ਖੱਬੇ ਪੈਰ ਵੱਲ ਲੰਮਾ ਕਰੋ ਜਦੋਂ ਤੱਕ ਤੁਸੀਂ ਆਪਣੇ ਸੱਜੇ ਕਮਰ ਦੇ ਅਗਲੇ ਹਿੱਸੇ ਵਿੱਚ ਖਿੱਚ ਮਹਿਸੂਸ ਨਾ ਕਰੋ ਅਤੇ ਪੱਟ।\n\n30 ਸਕਿੰਟ ਲਈ ਰੁਕੋ, ਆਰਾਮ ਕਰੋ, ਅਤੇ ਫਿਰ 2 ਵਾਰ ਦੁਹਰਾਓ।\n\nਪਾਸੇ ਬਦਲੋ ਅਤੇ ਦੁਹਰਾਓ।',
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
                        Text('\nਦੋਵੇਂ ਗੋਡਿਆਂ ਨੂੰ ਝੁਕੇ ਅਤੇ ਇੱਕ ਦੂਜੇ ਦੇ ਉੱਪਰ ਸਟੈਕ ਕਰਕੇ ਆਪਣੇ ਸੱਜੇ ਪਾਸੇ ਲੇਟ ਜਾਓ।\n\nਆਪਣੀ ਕਮਰ ਅਤੇ ਫਰਸ਼ ਵਿਚਕਾਰ ਇੱਕ ਛੋਟਾ ਜਿਹਾ ਪਾੜਾ ਬਣਾਉਣ ਲਈ ਆਪਣੇ ਸੱਜੇ ਪਾਸੇ ਨੂੰ ਫਰਸ਼ ਤੋਂ ਥੋੜ੍ਹਾ ਜਿਹਾ ਚੁੱਕੋ। ਇਹ ਤੁਹਾਡੇ ਪੇਡੂ ਨੂੰ ਵੀ ਲੈਵਲ ਕਰਦਾ ਹੈ।\n\nਆਪਣੀ ਖੱਬੀ ਲੱਤ ਨੂੰ ਸਿੱਧਾ ਕਰੋ ਅਤੇ ਇਸਨੂੰ ਆਪਣੇ ਸਾਹਮਣੇ ਥੋੜ੍ਹਾ ਜਿਹਾ ਕੋਣ ਦਿਓ। ਆਪਣੀ ਕਮਰ ਨੂੰ ਘੁਮਾਓ ਤਾਂ ਕਿ ਤੁਹਾਡੀਆਂ ਉਂਗਲਾਂ ਫਰਸ਼ ਵੱਲ ਇਸ਼ਾਰਾ ਕਰਨ।\n\nਸਾਹ ਛੱਡੋ ਕਿਉਂਕਿ ਤੁਸੀਂ ਆਪਣੀ ਲੱਤ ਨੂੰ ਚੁੱਕਣ ਲਈ ਲਗਭਗ 3 ਸਕਿੰਟ ਲੈਂਦੇ ਹੋ; 3 ਸਕਿੰਟ ਲਈ ਹੇਠਾਂ ਸਾਹ ਲਓ। ਜਦੋਂ ਤੁਸੀਂ ਆਪਣੀ ਲੱਤ ਨੂੰ ਚੁੱਕਦੇ ਹੋ, ਤਾਂ ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਸੀਂ ਆਪਣੀ ਕਮਰ ਅਤੇ ਫਰਸ਼ ਦੇ ਵਿਚਕਾਰ ਬਣਾਏ ਗਏ ਛੋਟੇ ਜਿਹੇ ਪਾੜੇ ਨੂੰ ਨਾ ਗੁਆਓ।\n\nਹਰ ਪਾਸੇ 8 ਤੋਂ 15 ਦੁਹਰਾਓ ਦੇ 2 ਸੈੱਟ ਕਰੋ।',
                            style:
                            TextStyle(color: Colors.black45,fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]),
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
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('ਮਰਮੇਡ ਖਿਚਾਅ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      const Image(
                        image: NetworkImage('https://knocked-upfitness.com/wp-content/uploads/2016/06/KUF-mermaid-stretch.png'),
                      ),
                      Text('\nਇਹ ਸਾਰੀ ਗਰਭ ਅਵਸਥਾ ਦੌਰਾਨ ਉਦੋਂ ਤੱਕ ਕਰੋ ਜਦੋਂ ਤੱਕ ਤੁਹਾਡੇ ਵਿੱਚ ਦਰਦਨਾਕ ਸੰਭੋਗ ਜਾਂ ਪਿਸ਼ਾਬ ਦੀ ਲੋੜ ਵਰਗੇ ਲੱਛਣ ਨਾ ਹੋਣ।\n\nਆਪਣੀ ਪਿੱਠ ਤੇ ਗੋਡਿਆਂ ਨੂੰ ਝੁਕੇ ਅਤੇ ਪੈਰਾਂ ਨੂੰ ਜ਼ਮੀਨ ਤੇ ਲੇਟ ਕੇ, ਕਮਰ-ਚੌੜਾਈ ਦੇ ਬਰਾਬਰ ਦੂਰ ਰਹੋ।\n \nਆਪਣੇ ਪੇਡੂ ਅਤੇ ਹੇਠਲੇ ਹਿੱਸੇ ਨੂੰ "ਨਿਰਪੱਖ" ਸਥਿਤੀ ਵਿੱਚ ਰੱਖੋ। ਇਸਨੂੰ ਲੱਭਣ ਲਈ, ਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਸੀਂ ਆਪਣੇ ਪੇਡੂ ਦੇ ਪਿਛਲੇ ਪਾਸੇ ਆਰਾਮ ਕਰ ਰਹੇ ਹੋ ਅਤੇ ਤੁਹਾਡੀ ਪਿੱਠ ਦੇ ਹੇਠਲੇ ਹਿੱਸੇ ਵਿੱਚ ਇੱਕ ਛੋਟੀ ਜਿਹੀ ਥਾਂ ਬਣਾ ਰਹੇ ਹੋ (ਤੁਹਾਡੀ ਪਿੱਠ ਨੂੰ ਫਰਸ਼ ਵਿੱਚ ਨਹੀਂ ਦਬਾਇਆ ਜਾਣਾ ਚਾਹੀਦਾ ਹੈ)।\n\nਤਿਆਰ ਕਰਨ ਲਈ ਸਾਹ ਲਓ, ਫਿਰ ਕੇਗਲ ਕਰਨ ਲਈ ਸਾਹ ਛੱਡੋ। ਹੌਲੀ-ਹੌਲੀ ਖੁੱਲ੍ਹਣ (ਯੂਰੇਥਰਾ, ਯੋਨੀ, ਅਤੇ ਗੁਦਾ) ਨੂੰ ਬੰਦ ਕਰਕੇ ਸੰਕੁਚਨ। ਜਦੋਂ ਤੁਸੀਂ ਇਹ ਸੰਕੁਚਨ ਕਰ ਰਹੇ ਹੋ, ਧਿਆਨ ਦਿਓ ਕਿ ਤੁਹਾਡੀਆਂ ਹੇਠਲੇ ਪੇਟ ਦੀਆਂ ਮਾਸਪੇਸ਼ੀਆਂ ਇਸ ਨਾਲ ਕਿਵੇਂ ਕੰਮ ਕਰਨਾ ਚਾਹੁੰਦੀਆਂ ਹਨ।\n\nਕੇਗਲ ਨਾਲ ਹੇਠਲੇ ਐਬਸ ਨੂੰ ਥੋੜ੍ਹਾ ਜਿਹਾ ਖਿੱਚੋ। ਸਾਹ ਲਓ, ਐਬਸ ਅਤੇ ਪੇਲਵਿਕ ਫਲੋਰ ਨੂੰ ਆਰਾਮ ਦਿਓ, ਦੁਹਰਾਓ ਸੰਕੁਚਨ ਸਾਹ ਬਾਹਰ ਕੱਢੋ।\n\nਦਿਨ ਵਿੱਚ ਇੱਕ ਜਾਂ ਦੋ ਵਾਰ, 3 ਤੋਂ 5-ਸਕਿੰਟ ਦੇ ਹੋਲਡ ਦੇ 8 ਤੋਂ 15 ਦੁਹਰਾਓ ਦੇ 2 ਸੈੱਟ ਕਰੋ।',
                          style:
                          TextStyle(color: Colors.black45,fontWeight: FontWeight.w700, fontSize: 14.0)),
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