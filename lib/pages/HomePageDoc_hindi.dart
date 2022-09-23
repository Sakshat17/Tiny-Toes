
import 'package:flutter/material.dart';

import 'DocInfoPage.dart';
import 'colorscheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: MyFirstPage_hindi(),
      routes: {
        '/DocInfoPage' : (context)=>DocInfoPage(),
      },
    );
  }
}
class MyFirstPage_hindi extends StatefulWidget {
  @override
  _MyFirstPage_hindiState createState() => _MyFirstPage_hindiState();
}

class _MyFirstPage_hindiState extends State<MyFirstPage_hindi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CustomPaint(
              painter: pathPainter(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30,
                  ),
                  actions: <Widget>[
                    Container(
                      height: 75,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [getStartedColorStart, getStartedColorEnd],
                              stops: [0,1]
                          )
                      ),
                      child: Center(
                        child: Text("H", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("डॉक्टर का चयन करें", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(
                        height: 20,
                      ),

                      Text("\nमुख्य चिकित्सक", style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),),
                      SizedBox(height: 18,),
                      Container(
                        height: 400,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              createDocWidget("doc.png", "सुसान थॉमस"),
                              createDocWidget("doc.png", "Paul Barbara"),
                              createDocWidget("doc.png", "Nancy Williams"),
                              createDocWidget("doc.png", "Susan Thomas"),
                              createDocWidget("doc.png", "Paul Barbara"),
                              createDocWidget("doc.png", "Nancy Williams"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Container categoryContainer(String imgName, String title)
  {
    return Container(
      width: 120,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/category/$imgName'),
          Text(
            "$title", style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 17
          ),
          )
        ],
      ),
    );
  }
  Container createDocWidget(String imgName, String docName)
  {
    return Container(
      child: InkWell(
        child: Container(

          margin: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: docContentBgColor,
          ),
          child: Container(
            padding: EdgeInsets.all(7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/$imgName'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: 6,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Dr. $docName", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 5,),
                    Container(
                      width: 250,
                      height: 50,
                      child: Text("डॉक्टर के बारे में एक संक्षिप्त \nयहाँ जोड़ा जाना है। यह एक परिचय की तरह है \nडॉक्टर के बारे में", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        onTap: openDocInfo,
      ),
    );
  }
  void openDocInfo()
  {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => DocInfoPage()));
  }
}

class pathPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();
    paint.color = path2Color;

    Path path = new Path();
    path.moveTo(0, 0);
    path.lineTo(size.width*0.3, 0);
    path.quadraticBezierTo(size.width*0.5, size.height*0.03, size.width*0.42, size.height*0.17);
    path.quadraticBezierTo(size.width*0.35, size.height*0.32, 0, size.height*0.29);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}