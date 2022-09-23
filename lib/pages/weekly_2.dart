import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_2 extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_2> {


  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text('Second Trimester\n Exercise Recommendations',
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
                      Text('Incline pushups\n',
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
                      Text('\nStand facing a ledge or railing and place your hands shoulder-width apart on the surface.\n\nStep your body back into a standing plank position with your back in a straight line.\n\nBend your arms and slowly lower your chest toward the railing or ledge.\n\nStraighten your arms to return to the starting position.\n\nDo 2 sets of 10 to 12 repetitions.',
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
                      Text('Hip flexor and quadriceps stretch\n',
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
                      Text('\nGo into a half-kneeling position on the floor. Place your right knee on the floor and your left foot in front of you, left foot flat on the floor.\n\nKeeping your posture nice and tall, lunge toward your left foot until you feel a stretch in the front of your right hip and thigh.\n\nHold for 30 seconds, ease off, and then repeat 2 more times.\n\nSwitch sides and repeat.',
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
                        Text('Side-lying leg lifts',
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
                        Text('\nLie on your right side with both knees bent and stacked on top of one another.\n\nSlightly lift your right side off of the floor to create a small gap between your waist and the floor. This also levels your pelvis.\n\nStraighten your left leg and angle it slightly in front of you. Rotate your hip so that your toes point down toward the floor.\n\nExhale as you take about 3 seconds to lift your leg; inhale for 3 seconds back down. As you lift your leg, make sure you don’t lose that little gap you created between your waist and the floor.\n\nDo 2 sets of 8 to 15 repetitions on each side.',
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
                      Text('Mermaid stretch',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      const Image(
                        image: NetworkImage('https://knocked-upfitness.com/wp-content/uploads/2016/06/KUF-mermaid-stretch.png'),
                      ),
                      Text('Sit on the ground with both of your knees bent (or folded) and your feet facing to the right.\n\nRaise your left arm straight to the ceiling as you inhale, then exhale and sidebend your torso toward the right. \n\nThe stretch should be felt on the left side in this example. Hold for 4 slow, deep breaths. \n\nThis would be the direction to stretch if you experience discomfort on the left side.Reverse directions for discomfort on the right side. \n\nTo reduce the risk of this occurring, start stretching both directions during the second trimester.',
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