import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int seconds = 0, minutes = 0, hours = 0;
  int _counter = 0;
  Timer timer;
  bool active = false;
  List laps = ["Duration - Kicks"];
/*  String heading="Index Duration Kicks";
  laps.add(heading);*/

  void cleanLaps() {
    setState(() {
      this.laps = [];
      String heading1="Duration - Kicks";
      this.laps.add(heading1);
    });
  }

  void addLap() {
    String lap = ((this.hours >= 10) ? '${this.hours}' : '0${this.hours}') +
        ':' +
        ((this.minutes >= 10) ? '${this.minutes}' : '0${this.minutes}') +
        ':' +
        ((this.seconds >= 10) ? '${this.seconds}' : '0${this.seconds}')+
        ' - '+
          '${this._counter}';
    setState(() {
      this.laps.add(lap);
    });
  }

  void stop() {
    this.timer.cancel();
    setState(() {
      this.active = false;
    });
  }

  void reset() {
    if (timer != null) this.timer.cancel();
    setState(() {
      this.seconds = 0;
      this.minutes = 0;
      this.hours = 0;
      this.active = false;
      this._counter=0;
    });
  }

  void increment() {
    setState(() {
      this.active = true;
    });
    Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = this.seconds + 1;
      int localMinutes = this.minutes;
      int localHours = this.hours;
      if (localSeconds > 60) {
        localMinutes++;
        if (localMinutes > 60) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        this.seconds = localSeconds;
        this.minutes = localMinutes;
        this.hours = localHours;
        this.timer = timer;
      });
    });
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 44, 86, 1.0),
      // primarySwatch: Colors.blue,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Fetal Count',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  ((this.hours >= 10) ? '${this.hours}' : '0${this.hours}') +
                      ':' +
                      ((this.minutes >= 10)
                          ? '${this.minutes}'
                          : '0${this.minutes}') +
                      ':' +
                      ((this.seconds >= 10)
                          ? '${this.seconds}'
                          : '0${this.seconds}'),
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                      "Kicks : " +
                          '${this._counter}',

                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: this.reset,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white60,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.refresh,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (this.active) ? this.stop : this.increment,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(174, 83, 169, 0.6),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(174, 83, 169, 1.0),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            (this.active) ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                            size: 60.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap:  _incrementCounter,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(174, 83, 169, 0.6),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(174, 83, 169, 1.0),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        //tooltip: 'Increment',
                        child: Icon(Icons.add,
                        color: Colors.white,
                          size: 40.0,),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: this.addLap,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white60,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          180.0,
                        ),
                      ),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            180.0,
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.flag,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 40.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: this.cleanLaps,
                      child: Text(
                        'Clear',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Text("Index Duration Kicks"),
                    child: ListView.builder(
                      itemCount: this.laps.length,
                      // child:Text("Index Duration Kicks"),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 5.0,
                          ),
                          child: Text(
                            '${this.laps[index]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}