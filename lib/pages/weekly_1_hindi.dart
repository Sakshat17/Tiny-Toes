import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_1_hindi extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_1_hindi> {

  final FlutterTts flutterTts= FlutterTts();


  @override
  Widget build(BuildContext context) {

    speak() async{
      await flutterTts.setLanguage("hi-IN");
      await flutterTts.setPitch(1);
      await flutterTts.setSpeechRate(0.4);

      await flutterTts.speak(' अपने घुटनों के बल झुके और पैरों के साथ अपनी पीठ के बल लेटें \nजमीन पर फ्लैट।\n\n‣ तैयारी के लिए एक गहरी सांस लें, फिर साँस छोड़ें \nफर्श पर अपनी रीढ़ की हड्डी की छाप बना रहे हैं।\n\n‣ उस टक की स्थिति को बनाए रखें  ');
    }
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          backgroundColor: Colors.lightBlue,
          title: Text('पहली तिमाही\n व्यायाम अनुशंसाएँ',
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
                            Text('पेल्विक कर्ल\n',
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
        Text('\n अपने घुटनों को मोड़कर और पैरों को जमीन पर सपाट करके \nअपनी पीठ के बल लेट जाएं, हिप-चौड़ाई के बारे में अलग।\n\n‣ तैयारी के लिए गहरी सांस लें, फिर सांस छोड़ें जैसे \nआप अपने श्रोणि को टक करें ( अपने "कूल्हों") ताकि \nआप फर्श पर अपनी रीढ़ की एक छाप बना रहे हों।\n उस छाप के, एक समय में कोई कशेरुका नहीं।\n\n ‣ जब आप अपने कंधे के ब्लेड तक पहुंचें तो रुकें।\n\n ‣ आंदोलन के शीर्ष पर श्वास लें, फिर श्वास छोड़ें \na जैसे आप अपने शरीर को वापस नीचे मोड़ते हैं, \n\n एक समय में कोई भी कशेरुका फर्श पर वापस नहीं आती \nजब तक आप अपने श्रोणि के पीछे \nअपनी प्रारंभिक स्थिति तक नहीं पहुंच जाते (आपके "कूल्हों," \nजितने लोग उन्हें संदर्भित करेंगे)।\n\n12 से 15 प्रतिनिधि करें। एक अतिरिक्त चुनौती के लिए, \nअपने पैरों को एक साथ लाएं।',
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
                          Text('घुटना टेककर पुशअप्स\n',
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
                          Text('यह कदम कोर और ऊपरी शरीर को एक साथ मजबूत करने का लक्ष्य रखता है।\n\nअपने पेट के बल लेट जाएं, फिर अपने हाथों और घुटनों पर अपने घुटनों को अपने कूल्हों के पीछे रखते हुए पुश अप करें।\n\nअपने एब्स (पेल्विक ब्रेस) में खींचें, और फिर श्वास लेते हुए अपनी छाती को धीरे-धीरे फर्श की ओर नीचे करें।',
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
                          Text('स्क्वाट\n',
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
                          Text('\nएक सोफे के सामने खड़े हो जाओ, अपनी पीठ को सोफे के सामने रखें। हिप-चौड़ाई से अलग पैरों से शुरू करें। उचित आकार सुनिश्चित करने के लिए एक गाइड के रूप में सोफे का उपयोग करें। वापस ऊपर आने के लिए 3 सेकंड नीचे जाने के लिए।\n\nस्क्वेट करते हुए सांस छोड़ें; खड़े होकर श्वास लें।\n\n15 से 20 प्रतिनिधि के 2 सेट करें।',
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
                        Text('पेल्विक ब्रेस',
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
                        Text('\nइसे गर्भावस्था के दौरान तब तक करें जब तक आपको पेल्विक फ्लोर के लक्षण जैसे दर्दनाक संभोग या पेशाब की तात्कालिकता न हो।\n\nअपने घुटनों को मोड़कर और पैरों को जमीन पर सपाट करके, कूल्हे-चौड़ाई के अलावा अपनी पीठ के बल लेटें।\n\ अपनी श्रोणि और पीठ के निचले हिस्से को "तटस्थ" स्थिति में रखें। इसे खोजने के लिए, सुनिश्चित करें कि आप अपने श्रोणि के पीछे आराम कर रहे हैं और अपनी पीठ के निचले हिस्से में एक छोटी सी जगह बना रहे हैं (आपकी पीठ को फर्श में दबाया नहीं जाना चाहिए)।\n\nतैयारी करने के लिए श्वास लें, फिर केगेल प्रदर्शन करने के लिए साँस छोड़ें उद्घाटन (मूत्रमार्ग, योनि और गुदा) को धीरे से बंद करके संकुचन। जैसा कि आप इस संकुचन को कर रहे हैं, ध्यान दें कि आपके पेट के निचले हिस्से की मांसपेशियां उसके साथ कैसे काम करना चाहती हैं।\n\nकेगेल के साथ निचले एब्स को थोड़ा अंदर खींचें। श्वास लें, पेट और पेल्विक फ्लोर को आराम दें, बार-बार संकुचन छोड़ें।\n\nदिन में एक या दो बार, 3- से 5 सेकंड के होल्ड के 8 से 15 दोहराव के 2 सेट करें।',
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