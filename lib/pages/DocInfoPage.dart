

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'colorscheme.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
// For Flutter applications, you'll most likely want to use
// the url_launcher package.
import 'package:url_launcher/url_launcher.dart';

class DocInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: docInfoPage(),
    );
  }
}
class docInfoPage extends StatefulWidget {
  @override
  _docInfoPageState createState() => _docInfoPageState();
}

class _docInfoPageState extends State<docInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [getStartedColorStart, getStartedColorEnd],
              begin: Alignment(0, -1.15),
              end: Alignment(0,0.1),
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Image.asset('assets/images/bg1.png'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: bgColor,
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/images/doc.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Dr. Susan Thomas", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),),
                              Text("Heart Surgeon - CK Hospital", style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("About the Doctor", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 10,),
                            Text("Please write the description of the doctor here. This will be a detailed information about the doctor and the roles and achievements that the doctor has had over the past years", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),
                            SizedBox(height: 10,),
                            Text("Available Time Slots", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 5,),
                            timeSlotWidget("13", "MAY", "Consultation", "Sunday 9 am to 11.30 am"),
                            timeSlotWidget("14", "MAY", "Consultation", "Monday 10 am to 12.30 am"),
                            timeSlotWidget("1", "JUN", "Consultation", "Wednesday 8 to 12.30 pm"),
                            timeSlotWidget("3", "JUN", "Consultation", "Friday 8 am to 1 am"),
                          ],
                        ),
                      ),


                      Text('\nCall your doctor',style: TextStyle(
                        color: Colors.black, fontSize: 24.0,fontWeight: FontWeight.w700,)),
                      IconButton(
                        icon: const Icon(Icons.call, size: 30.0),
                        tooltip: '',
                        onPressed: (){

                          call();
                        },
                      ),

                      Text('\nChat with your doctor',style: TextStyle(
                        color: Colors.black, fontSize: 24.0,fontWeight: FontWeight.w700,)),
                      IconButton(
                        icon: const Icon(Icons.chat, size: 30.0),
                        tooltip: '',
                        onPressed: (){

                          launchWhatsApp();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
  Container timeSlotWidget(String date, String month, String slotType, String time)
  {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: docContentBgColor
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: dateBgColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("$date", style: TextStyle(
                      color: dateColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w800
                  ),),
                  Text("$month", style: TextStyle(
                      color: dateColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("$slotType", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),),
                Text("$time", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
  call() async{
    String number='7838702054';
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+917838702054',
      text: "Hello Doctor ! I wanted to fix an appointment with you.",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }

  Widget buildButton() {
    final number='+917838702054';
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 48,vertical: 52),
        textStyle: TextStyle(fontSize: 24),
      ),
      child: Text('Call'),
      onPressed: ()async{
        launch('tel://$number');
      },

    );
  }
}