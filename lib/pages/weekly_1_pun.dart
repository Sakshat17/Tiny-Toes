import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_1_pun extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_1_pun> {

  final FlutterTts flutterTts= FlutterTts();


  @override
  Widget build(BuildContext context) {

    speak() async{
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.setSpeechRate(0.4);

      await flutterTts.speak(' Lie on your back with your knees bent and feet \nflat on the ground, about hip-width apart.\n\n‣ Take a deep breath in to prepare, then exhale as \nyou tuck your pelvis (your “hips”) so that you’re\nmaking an impression of your spine on the floor.\n\n‣ Keep that tucked position  ');
    }
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          backgroundColor: Colors.lightBlue,
          title: Text('ਪਹਿਲੀ ਤਿਮਾਹੀ\n ਕਸਰਤ ਦੀਆਂ ਸਿਫ਼ਾਰਸ਼ਾਂ',
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
                  padding: const EdgeInsets.all(20.0),
                  child: Row(





                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[



                            Padding(padding: EdgeInsets.only(bottom: 16.0)),
                            Text('ਪੇਡੂ ਦਾ ਕਰਲ\n',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24)),

                            Ink.image(
                              image : AssetImage('assets/images/p1.jpg'),
                              fit:BoxFit.cover,
                              width: MediaQuery.of(context).size.width*0.85,
                              height: 300,
                            ),
                            Text('\n ‣ ਆਪਣੇ ਗੋਡਿਆਂ ਨੂੰ ਝੁਕੇ ਅਤੇ ਪੈਰਾਂ ਨਾਲ ਆਪਣੀ ਪਿੱਠ ਤੇ ਲੇਟ \nਜਾਓ ਜ਼ਮੀਨ ਤੇ, ਕਮਰ-ਚੌੜਾਈ ਦੇ ਲਗਭਗ ਵੱਖੋ-ਵੱਖਰੇ ਪਾਸੇ।\n\n‣ ਤਿਆਰ ਕਰਨ ਲਈ ਡੂੰਘਾ ਸਾਹ ਲਓ, ਫਿਰ ਜਦੋਂ ਤੁਸੀਂ \nਆਪਣੇ ਪੇਡੂ (ਤੁਹਾਡੇ "ਕੁੱਲ੍ਹੇ") ਨੂੰ ਟੱਕਦੇ ਹੋ ਤਾਂ ਸਾਹ ਛੱਡੋ। ਤਾਂ ਜੋ \nਤੁਸੀਂ ਫਰਸ਼ ਤੇ ਆਪਣੀ ਰੀੜ੍ਹ ਦੀ ਹੱਡੀ ਦਾ ਪ੍ਰਭਾਵ ਬਣਾ ਰਹੇ ਹੋਵੋ।\n\n‣ ਉਸ ਟਿੱਕੀ ਹੋਈ ਸਥਿਤੀ ਨੂੰ ਰੱਖੋ ਜਦੋਂ ਤੁਸੀਂ \nਐਕਸਹੇਲ ਨੂੰ ਜਾਰੀ ਰੱਖਦੇ ਹੋ ਅਤੇ ਅੰਦੋਲਨ ਰਾਹੀਂ ਘੁੰਮਦੇ ਹੋ ਤਾਂ ਕਿ \nਤੁਸੀਂ ਆਪਣੀ ਰੀੜ੍ਹ ਦੀ ਹੱਡੀ ਨੂੰ ਉਸ ਛਾਪ ਤੋਂ ਬਾਹਰ ਕੱਢ ਰਹੇ ਹੋ, \n ਇੱਕ ਸਮੇਂ ਵਿੱਚ ਕੋਈ ਵੀ ਕੜੀ ਨਹੀਂ।\n\n ‣ ਜਦੋਂ ਤੁਸੀਂ ਆਪਣੇ ਮੋਢੇ ਦੇ ਬਲੇਡਾਂ ਤੇ ਪਹੁੰਚਦੇ ਹੋ ਤਾਂ ਰੁਕੋ।\n\n ‣ ਅੰਦੋਲਨ ਦੇ ਸਿਖਰ ਤੇ ਸਾਹ ਲਓ, ਫਿਰ ਸਾਹ ਛੱਡੋ \n ਜਦੋਂ ਤੁਸੀਂ ਆਪਣੇ ਸਰੀਰ ਨੂੰ ਵਾਪਸ ਹੇਠਾਂ ਮੋੜਦੇ ਹੋ, \n\nਇੱਕ ਵਾਰ ਵਿੱਚ ਕੋਈ ਵੀ ਰੀੜ੍ਹ ਦੀ ਹੱਡੀ ਨਹੀਂ ਰੱਖਦੇ।\n ਵਾਪਸ ਫਰਸ਼ ਤੇ ਜਾਓ ਜਦੋਂ ਤੱਕ ਤੁਸੀਂ ਆਪਣੇ ਪੇਡੂ ਦੇ ਪਿਛਲੇ\n ਪਾਸੇ ਆਪਣੀ ਸ਼ੁਰੂਆਤੀ ਸਥਿਤੀ ਤੇ ਨਹੀਂ ਪਹੁੰਚ ਜਾਂਦੇ \n(ਤੁਹਾਡੇ "ਕੁੱਲ੍ਹੇ," ਜਿੰਨੇ ਲੋਕ \nਉਨ੍ਹਾਂ ਨੂੰ ਦੇ ਤੌਰ ਤੇ ਸੰਬੋਧਿਤ ਕਰਨਗੇ)।\n\n12 ਤੋਂ 15 ਦੁਹਰਾਓ। ਇੱਕ ਵਾਧੂ ਚੁਣੌਤੀ ਲਈ, \nਆਪਣੀਆਂ ਲੱਤਾਂ ਨੂੰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਨਾਲ ਲਿਆਓ।',

                                style: TextStyle(
                                    color:Colors.black45,

                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0))
                          ],
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
                          Text('ਗੋਡੇ ਟੇਕ ਕੇ ਪੁਸ਼ਅੱਪ\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.0)),
                          Ink.image(
                            image : AssetImage('assets/images/p2.jpg'),
                            fit:BoxFit.cover,
                            width: MediaQuery.of(context).size.width*0.85,
                            height: 300,
                          ),
                          Text('\nਇਹ ਚਾਲ ਕੋਰ ਅਤੇ ਉਪਰਲੇ ਸਰੀਰ ਨੂੰ ਇਕੱਠੇ ਮਜ਼ਬੂਤ ਕਰਨ ਨੂੰ ਨਿਸ਼ਾਨਾ ਬਣਾਉਂਦਾ ਹੈ।\n\nਆਪਣੇ ਪੇਟ ਤੇ ਲੇਟ ਜਾਓ, ਫਿਰ ਆਪਣੇ ਗੋਡਿਆਂ ਨੂੰ ਆਪਣੇ ਕੁੱਲ੍ਹੇ ਦੇ ਪਿੱਛੇ ਰੱਖਦੇ ਹੋਏ, ਆਪਣੇ ਹੱਥਾਂ ਅਤੇ ਗੋਡਿਆਂ ਤੇ ਧੱਕੋ।\n\nਆਪਣੇ ਐਬਸ (ਪੇਲਵਿਕ ਬ੍ਰੇਸ) ਨੂੰ ਖਿੱਚੋ, ਅਤੇ ਫਿਰ ਸਾਹ ਲੈਂਦੇ ਹੋਏ ਹੌਲੀ-ਹੌਲੀ ਆਪਣੀ ਛਾਤੀ ਨੂੰ ਫਰਸ਼ ਵੱਲ ਹੇਠਾਂ ਕਰੋ।\n\nਬੈਕਅੱਪ ਦਬਾਉਂਦੇ ਹੋਏ ਸਾਹ ਛੱਡੋ।\n\n6 ਤੋਂ 10 ਨਾਲ ਸ਼ੁਰੂ ਕਰੋ ਅਤੇ ਹੌਲੀ-ਹੌਲੀ 20 ਤੋਂ 24 ਦੁਹਰਾਓ ਤੱਕ ਕੰਮ ਕਰੋ।',
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
                          Text('ਸਕੁਐਟਸ\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.0)),
                          Ink.image(
                            image : AssetImage('assets/images/p3.jpg'),
                            fit:BoxFit.cover,
                            width: MediaQuery.of(context).size.width*0.85,
                            height: 300,
                          ),
                          Text('\nਸੋਫੇ ਦੇ ਸਾਹਮਣੇ ਖੜੇ ਹੋਵੋ, ਤੁਹਾਡੀ ਪਿੱਠ ਸੋਫੇ ਵੱਲ ਹੋਵੇ। ਕਮਰ-ਚੌੜਾਈ ਨਾਲੋਂ ਸਿਰਫ਼ ਚੌੜੇ ਪੈਰਾਂ ਨਾਲ ਸ਼ੁਰੂ ਕਰੋ। ਸਹੀ ਸਰੂਪ ਨੂੰ ਯਕੀਨੀ ਬਣਾਉਣ ਲਈ ਇੱਕ ਗਾਈਡ ਦੇ ਤੌਰ ਤੇ ਸੋਫੇ ਦੀ ਵਰਤੋਂ ਕਰੋ।\n\nਇਸ ਤਰ੍ਹਾਂ ਹੇਠਾਂ ਬੈਠੋ ਜਿਵੇਂ ਤੁਸੀਂ ਸੋਫੇ ਤੇ ਬੈਠਣ ਜਾ ਰਹੇ ਹੋ, ਪਰ ਜਿਵੇਂ ਹੀ ਤੁਹਾਡੀਆਂ ਪੱਟਾਂ ਇਸ ਨੂੰ ਛੂਹਣ ਲੱਗਦੀਆਂ ਹਨ ਉਸੇ ਤਰ੍ਹਾਂ ਵਾਪਸ ਉੱਪਰ ਆ ਜਾਓ।\n\nਯਕੀਨੀ ਬਣਾਓ ਕਿ ਤੁਸੀਂ 5 ਸਕਿੰਟ ਕੱਢਦੇ ਹੋ। ਵਾਪਸ ਉੱਪਰ ਆਉਣ ਲਈ 3 ਸਕਿੰਟ ਹੇਠਾਂ ਜਾਣ ਲਈ।\n\nਸਕੂਟ ਕਰਦੇ ਸਮੇਂ ਸਾਹ ਛੱਡੋ; ਖੜ੍ਹੇ ਹੁੰਦੇ ਹੀ ਸਾਹ ਲਓ।\n\n15 ਤੋਂ 20 ਦੁਹਰਾਓ ਦੇ 2 ਸੈੱਟ ਕਰੋ।',
                              style:
                              TextStyle(color: Colors.black45,fontWeight: FontWeight.w700, fontSize: 14.0)),
                        ]),
                  ),
                  onTap: () =>
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Epap()),

                      )),
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
                        Text('ਪੇਲਵਿਕ ਬ੍ਰੇਸ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0)),
                        Ink.image(
                          image : AssetImage('assets/img/pelvic.jpg'),
                          fit:BoxFit.cover,
                          width: MediaQuery.of(context).size.width*0.85,
                          height: 300,
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