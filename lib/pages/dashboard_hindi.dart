import 'package:Tiny_Toes/map.dart';
import 'package:Tiny_Toes/music.dart';
import 'package:Tiny_Toes/pages/reminders.dart';
import 'package:Tiny_Toes/pages/weekly_videos_hindi.dart';
import 'package:Tiny_Toes/profile_page.dart';
import 'package:Tiny_Toes/pages/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:Tiny_Toes/pages/homePage.dart';
import 'package:mysql1/mysql1.dart';
import 'HomePageDoc_hindi.dart';
import 'post.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Tiny_Toes/pages/epap.dart';
import 'package:Tiny_Toes/api/api.dart';
import 'package:Tiny_Toes/models/todo.dart';
import 'package:provider/provider.dart';
import 'package:Tiny_Toes/pages/tracking_input.dart';
import 'package:Tiny_Toes/pages/baby_hindi.dart';
import 'package:Tiny_Toes/general_subpages/pg1_hindi.dart';
import 'package:Tiny_Toes/pages/dashboard.dart';
import 'package:Tiny_Toes/pages/dashboard_punjabi.dart';
import 'package:Tiny_Toes/pages/babycare.dart';
import 'package:Tiny_Toes/pages/tools_hindi.dart';
import 'package:Tiny_Toes/pages/profile.dart';
import 'package:Tiny_Toes/pages/AuthenticationProvider.dart';
import 'package:Tiny_Toes/ui/welcomepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Tiny_Toes/main.dart';
import 'package:Tiny_Toes/ui/login_page.dart';

// var settings = new ConnectionSettings(
//     host: 'localhost',
//     port: 3306,
//     user: 'root',
//     password: 'root',
//     db: 'TinyToes'
// );
// var conn = MySqlConnection.connect(settings);
// //const auth = getAuth();
// // Firebase.Auth.FirebaseUser user = auth.CurrentUser;
// // var uid=user.UserId
// //const User user = auth.currentUser;
// var uid = 1;
// var result = conn.query('insert into User (userid) values (uid)');

class MainPage_hindi extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage_hindi> {
  int _selectedIndex = 0;
  final _auth = FirebaseAuth.instance;
  final String _useremail="";
  //initstate();
  void initState() {
    super.initState();
    //getCurrentUser();
    // update();
    //addit();
  }
  Future<User> getCurrentUser() async {
    return await _auth.currentUser;

  }

  void addit() {
    String uid1=_auth.currentUser.uid;
    String  url1 = 'http://48dc-2405-201-4001-8065-78a1-1464-bf1e-bed8.ngrok.io/apis/v1/';
    final String name1 = "Not updated";
    final String lang = "English";
    final String deliverydate="Not updated";
    final Todo todo = Todo(
        name: name1, language: lang, uid: uid1,deliverydate:deliverydate);
    final TodoProvider todo1=new TodoProvider();
    todo1.addTodo(todo,url1);
  }
  void update() {
    String email1=_auth.currentUser.uid;
    String  url1 = 'http://48dc-2405-201-4001-8065-78a1-1464-bf1e-bed8.ngrok.io/apis/v1/';
    url1=url1+email1;
    final String name1 = "Himanshi";
    final String lang = "English";
    final Todo todo = Todo(
        name: name1, language: lang, uid: email1);
    final TodoProvider todo1=new TodoProvider();
    todo1.updateTodo(todo,url1);
  }

  void findit(){
    String email1=_auth.currentUser.uid;
    final TodoProvider todo1=new TodoProvider();
    String  url1 = 'http://48dc-2405-201-4001-8065-78a1-1464-bf1e-bed8.ngrok.io/apis/v1/';
    url1=url1+email1;
    url1=url1+'?format=json';
    final url=url1;
    todo1.fetchTasks(url);
  }
  final List<List<double>> charts = [
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ]
  ];

  static final List<String> chartDropdownItems = [
    'Last 7 days',
    'Last month',
    'Last year'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;
  _onTap1() { // this has changed
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => _children[_currentIndex])); // this has changed
  }

  final List<Widget> _children = [
    MainPage(),
    ToolsPage_hindi(),
    // HomePage(),
    BabyCare_hindi(),

  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          backgroundColor: Colors.lightBlue,
          title: Text('नमस्ते उपयोगकर्ता!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0)),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      color: Colors.white,
                      child: new Text("मेरी प्रोफाइल"),
                      textColor: Colors.pink,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => ProfilePage1()));
                      }
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      color: Colors.white,
                      child: new Text("लॉग आउट"),
                      textColor: Colors.pink,
                      onPressed: ()  async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.remove('id');
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => MyApp()));
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => WelcomeScreen()),
                        //       (Route<dynamic> route) => false,
                        // );
                      }
                  )
                ],
              ),

            ),
            PopupMenuButton<int>(
              color: Colors.white,
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('English'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Hindi'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('Punjabi'),
                ),

              ],
            ),


          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'घर',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'उपकरण',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'बच्चे की देखभाल',
            ),

          ],
          currentIndex: _selectedIndex,
          onTap: (index) { // this has changed
            setState(() {
              _currentIndex = index;
            });
            _onTap1();
          },
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 1,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            children: <Widget>[
              const Image(
                image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/518/144/non_2x/vector-happy-parents-cute-cartoon-concept-illustration-of-a-couple-holding-newborn-baby-healthcare-parenting-medicine.jpg'),
              ),
              // _buildTile(
              //   Padding(
              //     padding: const EdgeInsets.all(20.0),
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: <Widget>[
              //           Column(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Material(
              //                   color: Colors.amber,
              //                   borderRadius: BorderRadius.circular(24.0),
              //                   child: Center(
              //                       child: Padding(
              //                         padding: const EdgeInsets.all(14.0),
              //                         child: Icon(Icons.calendar_today,
              //                             color: Colors.white, size: 30.0),
              //                       ))),
              //               Padding(padding: EdgeInsets.only(bottom: 16.0)),
              //               Text('महीने और दिन बाकी',
              //                   textAlign: TextAlign.left,
              //                   style: TextStyle(color: Colors.white,
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 24)),
              //               Text('05/15',
              //                   textAlign: TextAlign.left,
              //                   style: TextStyle(
              //                       color: Colors.white,
              //
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 34.0))
              //             ],
              //           ),
              //
              //         ]),
              //   ),
              //
              // ),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                            color: Colors.amber,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.favorite,
                                  color: Colors.white, size: 30.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 16.0)),
                        Text('मातृ कल्याण',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0)),
                        Text('',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 10.0)),
                      ]),
                ),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => General_hindi_1()),

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
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.notifications,
                                    color: Colors.white, size: 30.0),
                              )),
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          Text('अनुस्मारक',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.0)),
                          Text('टीका',
                              style:
                              TextStyle(color: Colors.black45, fontSize: 11.0)),
                        ]),
                  ),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Epap()),

                  )),
              _buildTile(
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Material(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: Icon(Icons.library_music,
                                                color: Colors.white, size: 30.0),
                                          ))),
                                  Text('\nत्रैमासिक व्यायाम',
                                      style: TextStyle(
                                        color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.w700,)),

                                ],
                              ),

                            ],
                          ),

                        ],
                      )),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => videos_hindi()),
                  )),
              _buildTile(
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Material(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(24.0),
                                child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(Icons.call,
                                          color: Colors.white, size: 40.0),
                                    ))),
                            Padding(padding: EdgeInsets.only(bottom: 16.0)),
                            Text('मेरे डॉक्टर',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700)),
                            Text('',
                                style: TextStyle(
                                    color: Colors.black45,

                                    fontSize: 16.0))
                          ],
                        ),

                      ]),
                ),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MyFirstPage_hindi())),
              ),
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Material(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.location_searching,
                                            color: Colors.white, size: 30.0),
                                      ))),
                              Padding(padding: EdgeInsets.only(bottom: 16.0)),

                              Text('नक्शा',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30.0)),
                              Text('आस-पास के अस्पताल',
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),

                        ]),
                  ),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => PatientPage())
                  )),
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
        color: Colors.teal[300],
        borderRadius: BorderRadius.circular(12.0),

        shadowColor: Color(0xFFFFFFFF),
        child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
              print('Not set yet');
            },
            child: child));
  }
  void onSelected(BuildContext context, int item)  async {
    switch (item) {
      case 0:
        final _auth2 = FirebaseAuth.instance;
        String email1=_auth2.currentUser.uid;
        final TodoProvider todo1=new TodoProvider();
        final LoginPage loginscreen = new LoginPage();
        String  url1 = loginscreen.Globalurl;
        url1=url1+email1;
        url1=url1+'?format=json';
        final url=url1;
        int  x1= await todo1.fetchTasks(url);
        if(x1==1)
        {
          Todo  x5= await todo1.fetchTasks2(url);
          x5.updatelanguage("English");
          todo1.updateTodo(x5,url);

        }
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MainPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MainPage_hindi()),
        );
        break;
      case 2:
        final _auth2 = FirebaseAuth.instance;
        String email1=_auth2.currentUser.uid;
        final TodoProvider todo1=new TodoProvider();
        final LoginPage loginscreen = new LoginPage();
        String  url1 = loginscreen.Globalurl;
        url1=url1+email1;
        url1=url1+'?format=json';
        final url=url1;
        int  x1= await todo1.fetchTasks(url);
        if(x1==1)
        {
          Todo  x5= await todo1.fetchTasks2(url);
          x5.updatelanguage("Punjabi");
          todo1.updateTodo(x5,url);

        }
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MainPage_punjabi()),
              (route) => false,
        );
    }
  }
}