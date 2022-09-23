import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Tiny_Toes/ui/welcomepage.dart';
import 'package:Tiny_Toes/ui/login_page.dart';
import 'package:Tiny_Toes/ui/register_page.dart';
import 'package:Tiny_Toes/pages/phone_auth.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Tiny_Toes/pages/dashboard.dart';
import 'package:Tiny_Toes/pages/dashboard_hindi.dart';
import 'package:Tiny_Toes/pages/dashboard_punjabi.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:Tiny_Toes/api/api.dart';
import 'package:Tiny_Toes/models/todo.dart';
import 'package:provider/provider.dart';
void main()async {
  tz.initializeTimeZones();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var id = prefs.getString('id');
  final _auth2 = FirebaseAuth.instance;
  String email1=id;
  if(id==null)
    {
      runApp(MaterialApp( debugShowCheckedModeBanner: false,home: id == null ? MyApp() : MainPage()));
    }
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
      if(x5.language=="Punjabi") {
        runApp(MaterialApp( debugShowCheckedModeBanner: false,home: id == null ? MyApp() : MainPage_punjabi()));
      }
      else if(x5.language=="Hindi")
        {
          runApp(MaterialApp( debugShowCheckedModeBanner: false,home: id == null ? MyApp() : MainPage_hindi()));
        }
      else
        {
          runApp(MaterialApp( debugShowCheckedModeBanner: false,home: id == null ? MyApp() : MainPage()));
        }
    }
  else
    {
      runApp(MaterialApp( debugShowCheckedModeBanner: false,home: id == null ? MyApp() : MainPage()));
    }
  print(id);
  print(2);

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiny Toes',
      theme: new ThemeData(

        primarySwatch: Colors.green,
      ),

        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginPage.id: (context) => LoginPage(),
          SignupScreen.id: (context) => SignupScreen(),
          LoginScreen.id: (context) => LoginScreen(),

        },
    );
  }
}

// run -> flutter run --no-sound-null-safety