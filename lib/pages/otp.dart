import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Tiny_Toes/pages/dashboard.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:Tiny_Toes/api/api.dart';
import 'package:Tiny_Toes/models/todo.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class OTPScreen extends StatefulWidget {
  final String phone;
  OTPScreen(this.phone);
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(43, 46, 66, 1),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                'Verify +91-${widget.phone}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: PinPut(
              fieldsCount: 6,
              textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
              eachFieldWidth: 40.0,
              eachFieldHeight: 55.0,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration,
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.fade,
              onSubmit: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                      verificationId: _verificationCode, smsCode: pin))
                      .then((value) async {

                    if (value.user != null) {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      final _auth2 = FirebaseAuth.instance;
                      prefs.setString('id', _auth2.currentUser.uid);
                      String email1=_auth2.currentUser.uid;
                      final TodoProvider todo1=new TodoProvider();
                      String  url1 = 'http://51d9-2405-201-4001-8065-8df9-cc76-3ea9-b7fe.ngrok.io/apis/v1/';
                      url1=url1+email1;
                      url1=url1+'?format=json';
                      final url=url1;
                      int  x1= await todo1.fetchTasks(url);
                      // Future int x4=1;
                      // print(x1);
                      if(x1==1)
                      {
                        print("fetched");
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                                (route) => false);
                      }
                      else
                      {
                        final String name1 = "Not updated";
                        final String lang = "English";
                        final String deliverydate="Not updated";
                        final Todo todo = Todo(
                            name: name1, language: lang, uid: email1,deliverydate:deliverydate);
                        String  url2 = 'http://51d9-2405-201-4001-8065-8df9-cc76-3ea9-b7fe.ngrok.io/apis/v1/';
                        todo1.addTodo(todo,url2);
                        print("added");
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                                (route) => false);
                      }

                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  _scaffoldkey.currentState
                      .showSnackBar(SnackBar(content: Text('invalid OTP')));
                }
              },
            ),
          )
        ],
      ),
    );
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              final _auth2 = FirebaseAuth.instance;
              String email1=_auth2.currentUser.uid;
              final TodoProvider todo1=new TodoProvider();
              String  url1 = 'http://51d9-2405-201-4001-8065-8df9-cc76-3ea9-b7fe.ngrok.io/apis/v1/';
              url1=url1+email1;
              url1=url1+'?format=json';
              final url=url1;
              int  x1= await todo1.fetchTasks(url);
              // Future int x4=1;
              // print(x1);
              if(x1==1)
              {
                print("fetched");
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                        (route) => false);
              }
              else
              {
                final String name1 = "Not updated";
                final String lang = "English";
                final String deliverydate="Not updated";
                final Todo todo = Todo(
                    name: name1, language: lang, uid: email1,deliverydate:deliverydate);
                String  url2 = 'http://51d9-2405-201-4001-8065-8df9-cc76-3ea9-b7fe.ngrok.io/apis/v1/';
                todo1.addTodo(todo,url2);
                print("added");
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                        (route) => false);
              }
              // Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(builder: (context) => MainPage()),
              //         (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }
}