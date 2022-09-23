import 'package:Tiny_Toes/general_subpages/general_pg1.dart';
import 'package:Tiny_Toes/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../map.dart';
import 'epap.dart';



class videos_2_h extends StatefulWidget {


  @override
  _videosState createState() => _videosState();
}

class _videosState extends State<videos_2_h> {


  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.lightBlue,
        title: Text('दूसरा त्रैमासिक\n व्यायाम अनुशंसाएँ',
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
                      Text('पुशअप्स को इनलाइन करें\n',
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
                      Text('\nएक सीढ़ी या रेलिंग का सामना करते हुए खड़े हो जाओ और अपने हाथों को कंधे-चौड़ाई के अलावा सतह पर रखें।\n\nअपने शरीर को एक सीधी रेखा में अपनी पीठ के साथ एक स्थायी तख़्त स्थिति में ले जाएँ।\n\nअपनी बाहों को मोड़ें और धीरे-धीरे अपनी छाती को नीचे की ओर ले जाएँ। रेलिंग या कगार।\n\nअपनी भुजाओं को सीधा करके प्रारंभिक स्थिति में लौट आएं।\n\n10 से 12 दोहराव के 2 सेट करें।',
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
                      Text('हिप फ्लेक्सर और क्वाड्रिसेप्स स्ट्रेच\n',
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
                      Text('\nफर्श पर आधा घुटना टेककर स्थिति में आ जाएं। अपने दाहिने घुटने को फर्श पर और अपने बाएं पैर को अपने सामने रखें, बाएं पैर को फर्श पर सपाट रखें।\n\nअपने आसन को अच्छा और लंबा रखते हुए, अपने बाएं पैर की ओर तब तक झुकें जब तक कि आप अपने दाहिने कूल्हे के सामने खिंचाव महसूस न करें। और जांघ।\n\n30 सेकंड के लिए रुकें, आराम करें, और फिर 2 बार दोहराएं।\n\nपक्षों को स्विच करें और दोहराएं।',
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
                        Text('\nदोनों घुटनों को मोड़कर और एक-दूसरे के ऊपर ढेर करके अपनी दाहिनी ओर लेट जाएं।\n\nअपनी कमर और फर्श के बीच एक छोटा सा गैप बनाने के लिए अपने दाहिने हिस्से को फर्श से थोड़ा ऊपर उठाएं। यह आपके श्रोणि को भी समतल करता है।\n\nअपने बाएं पैर को सीधा करें और इसे अपने सामने थोड़ा सा मोड़ें। अपने कूल्हे को घुमाएं ताकि आपके पैर की उंगलियां फर्श की ओर इंगित करें।\n\nअपने पैर को ऊपर उठाने में लगभग 3 सेकंड का समय लेते हुए सांस छोड़ें; 3 सेकंड के लिए वापस नीचे श्वास लें। जैसे ही आप अपना पैर उठाते हैं, सुनिश्चित करें कि आप अपनी कमर और फर्श के बीच बनाए गए उस छोटे से अंतर को नहीं खोते हैं।\n\nप्रत्येक तरफ 8 से 15 दोहराव के 2 सेट करें।',
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
                      Text('मत्स्यांगना खिंचाव',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      const Image(
                        image: NetworkImage('https://knocked-upfitness.com/wp-content/uploads/2016/06/KUF-mermaid-stretch.png'),
                      ),
                      Text('\nइसे पूरी गर्भावस्था के दौरान तब तक करें जब तक कि आपको पेल्विक फ्लोर के लक्षण जैसे दर्दनाक संभोग या पेशाब की तात्कालिकता न हो।\n\nअपने घुटनों को मोड़कर और पैरों को जमीन पर सपाट रखते हुए अपनी पीठ के बल लेटें, लगभग हिप-चौड़ाई अलग।\n \nअपनी श्रोणि और पीठ के निचले हिस्से को "तटस्थ" स्थिति में रखें। इसे खोजने के लिए, सुनिश्चित करें कि आप अपने श्रोणि के पीछे आराम कर रहे हैं और अपनी पीठ के निचले हिस्से में एक छोटी सी जगह बना रहे हैं (आपकी पीठ को फर्श में दबाया नहीं जाना चाहिए)।\n\nतैयारी करने के लिए श्वास लें, फिर केगेल प्रदर्शन करने के लिए साँस छोड़ें उद्घाटन (मूत्रमार्ग, योनि और गुदा) को धीरे से बंद करके संकुचन। जैसा कि आप इस संकुचन को कर रहे हैं, ध्यान दें कि आपके पेट के निचले हिस्से की मांसपेशियां उसके साथ कैसे काम करना चाहती हैं।\n\nकीगल के साथ निचले एब्स को थोड़ा अंदर खींचें। श्वास लें, एब्स और पेल्विक फ्लोर को आराम दें, बार-बार संकुचन छोड़ें।\n\nदिन में एक या दो बार 3 से 5 सेकंड के होल्ड के 8 से 15 दोहराव के 2 सेट करें।',
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