import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_1 extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_1> {

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
          title: Text('First Trimester\n Exercise Recommendations',
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
                            Text('Pelvic curl\n',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24)),
                            IconButton(
                              icon: const Icon(Icons.volume_up),
                              tooltip: 'Increase volume by 10',
                              onPressed: () => speak(),
                            ),
                            Ink.image(
                              image : AssetImage('assets/images/p1.jpg'),
                              fit:BoxFit.cover,
                              width: MediaQuery.of(context).size.width*0.85,
                              height: 300,
                            ),
                            Text('\n ‣ Lie on your back with your knees bent and feet \nflat on the ground, about hip-width apart.\n\n‣ Take a deep breath in to prepare, then exhale as \nyou tuck your pelvis (your “hips”) so that you’re\nmaking an impression of your spine on the floor.\n\n‣ Keep that tucked position as you continue the \nexhale and roll through the movement so that \nyou are lifting your spine out of that impression, \none vertebra at a time.\n\n ‣ Stop when you reach your shoulder blades.\n\n ‣ Inhale at the top of the movement, then exhale \nas you fold your body back down, placing \none vertebra at a time back onto the floor \nuntil you get to your starting position on the back \nof your pelvis (your “hips,” as many people will \nrefer to them as).\n\nDo 12 to 15 reps. For an added challenge, bring \nyour legs all the way together.',

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
                          Text('Kneeling pushups\n',
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
                          Text('\nThis move targets core and upper body strengthening together.\n\nLie flat on your stomach, then push up onto your hands and knees, keeping your knees behind your hips.\n\nPull in your abs (the pelvic brace), and then slowly lower your chest toward the floor as you inhale.\n\nExhale as you press back up.\n\nStart with 6 to 10 and gradually work up to 20 to 24 reps.',
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
                          Text('Squats\n',
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
                          Text('\nStand in front of a couch, with your back facing the couch. Begin with feet just wider than hip-width apart. Use the couch as a guide to ensure proper form.\n\nSquat down like you’re about to sit down on the couch, but come back up just as your thighs start to touch it.\n\nMake sure you take 5 seconds to go down 3 seconds to come back up.\n\nExhale as you squat; inhale as you stand.\n\nDo 2 sets of 15 to 20 reps.',
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
                        Text('Pelvic brace',
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
                        Text('\nDo this throughout pregnancy as long as you don’t have pelvic floor symptoms such as painful intercourse or urinary urgency.\n\nLie on your back with your knees bent and feet flat on the ground, about hip-width apart.\n\nPlace your pelvis and low back into a “neutral” position. To find this, make sure you’re resting on the back of your pelvis and creating a small space in your lower back (your back should not be pressed into the floor).\n\nInhale to prepare, then exhale to perform a Kegel contraction by gently closing the openings (the urethra, the vagina, and anus). As you are performing this contraction, notice how your lower abdominal muscles want to work with that.\n\nSlightly draw the lower abs in with the Kegel. Inhale, relax the abs and pelvic floor, exhale repeat contraction.\n\nDo 2 sets of 8 to 15 repetitions of 3- to 5-second holds, once or twice a day.',
                            style:
                            TextStyle(color: Colors.black45,fontWeight: FontWeight.w700, fontSize: 14.0)),
                      ]),
                ),
                onTap: () =>
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => General_sc1()),
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