import 'dart:async';

import 'package:flutter/material.dart';
import 'package:Tiny_Toes/pages/edit_name.dart';
import 'package:Tiny_Toes/pages/edit_phone.dart';
import 'package:Tiny_Toes/pages/edit_age.dart';
import 'package:Tiny_Toes/pages/edit_date.dart';
import 'package:Tiny_Toes/ui/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Tiny_Toes/api/api.dart';
import 'package:Tiny_Toes/models/todo.dart';
import 'package:provider/provider.dart';

// This class handles the Page to dispaly the user's info on the "Edit Profile" Screen
class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePageState1 createState() => _ProfilePageState1();
}

class _ProfilePageState1 extends State<ProfilePage1> {
  @override

  Widget build(BuildContext context) {
    // final user = UserData.myUser;
    // cons1.ProfilePage1();
    String name="Not updated";
    final LoginPage loginscreen = new LoginPage();
    final _auth2 = FirebaseAuth.instance;
    String email1 = _auth2.currentUser.uid;
    final TodoProvider todo1 = new TodoProvider();
    String url1 = loginscreen.Globalurl;
    url1 = url1 + email1;
    url1 = url1 + '?format=json';
    final url = url1;
    // String name = "Not Updated";

    Future<List<String>> getname() async {
      int x1 = await todo1.fetchTasks(url);
      List<String> mylist = [];
      if (x1 == 1) {
        Todo x5 = await todo1.fetchTasks2(url);
        // print(x5.name);
        // setState (() => name=x5.name);
        mylist.add(x5.name);
        mylist.add(x5.age);
        mylist.add(x5.phonenumber);
        mylist.add(x5.deliverydate);
      }
      else
        {
          mylist.add("Not Updated");
          mylist.add("Not Updated");
          mylist.add("Not Updated");
          mylist.add("Not Updated");
        }

      return mylist;
    }

    return FutureBuilder(
      future:getname(),
      builder: (BuildContext context, AsyncSnapshot<List<String>> userNameSnapshot) {
        Widget widget;
        // print(userNameSnapshot.hasData);
        if (userNameSnapshot.hasData) {
          widget =Scaffold(
            body: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  toolbarHeight: 10,
                ),
                Center(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(64, 105, 225, 1),
                          ),
                        ))),
                InkWell(
                  onTap: () {
                    // navigateSecondPage(EditImagePage());
                  },
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              image: new ExactAssetImage(
                                  'assets/images/as.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ],
                  ),),
                buildUserInfoDisplay(userNameSnapshot.data[0], 'Name', EditNameFormPage()),
                buildUserInfoDisplay(userNameSnapshot.data[2],"Phone",EditPhoneFormPage()),
                // age and delivery date
                buildUserInfoDisplay(userNameSnapshot.data[1], 'Age', EditAgeFormPage()),
                buildUserInfoDisplay(userNameSnapshot.data[3], 'Expected Delivery Date', EditDateFormPage()),
                // Expanded(
                //   child: buildAbout(user),
                //   flex: 4,
                // )
              ],
            ),
          );
        }
        else
          {
            widget = Scaffold(
              body: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    toolbarHeight: 10,
                  ),
                  Center(
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(64, 105, 225, 1),
                            ),
                          ))),
                  InkWell(
                    onTap: () {
                      // navigateSecondPage(EditImagePage());
                    },
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                image: new ExactAssetImage(
                                    'assets/images/as.png'),
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),),
                  buildUserInfoDisplay("Not Updated", 'Name', EditNameFormPage()),
                  buildUserInfoDisplay("Not Updated", 'Phone', EditPhoneFormPage()),
                  // age and delivery date
                  buildUserInfoDisplay("Not Updated", 'Age', EditAgeFormPage()),
                  buildUserInfoDisplay(
                      "Not Updated", 'Expected Delivery Date', EditDateFormPage()),
                  // Expanded(
                  //   child: buildAbout(user),
                  //   flex: 4,
                  // )
                ],
              ),
            );
          }

        return widget;
      },
    );
  }

  // Widget builds the display item with the proper formatting to display the user's info
  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ))),
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              navigateSecondPage(editPage);
                            },
                            child: Text(
                              getValue,
                              style: TextStyle(fontSize: 16, height: 1.4),
                            ))),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 40.0,
                    )
                  ]))
            ],
          ));

  // Widget builds the About Me Section
  // Widget buildAbout(User user) => Padding(
  //     padding: EdgeInsets.only(bottom: 10),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Tell Us About Yourself',
  //           style: TextStyle(
  //             fontSize: 15,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.grey,
  //           ),
  //         ),
  //         const SizedBox(height: 1),
  //         Container(
  //             width: 350,
  //             height: 200,
  //             decoration: BoxDecoration(
  //                 border: Border(
  //                     bottom: BorderSide(
  //                       color: Colors.grey,
  //                       width: 1,
  //                     ))),
  //             child: Row(children: [
  //               Expanded(
  //                   child: TextButton(
  //                       onPressed: () {
  //                         navigateSecondPage(EditDescriptionFormPage());
  //                       },
  //                       child: Padding(
  //                           padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
  //                           child: Align(
  //                               alignment: Alignment.topLeft,
  //                               child: Text(
  //                                 user.aboutMeDescription,
  //                                 style: TextStyle(
  //                                   fontSize: 16,
  //                                   height: 1.4,
  //                                 ),
  //                               ))))),
  //               Icon(
  //                 Icons.keyboard_arrow_right,
  //                 color: Colors.grey,
  //                 size: 40.0,
  //               )
  //             ]))
  //       ],
  //     ));

  // Refrshes the Page after updating user info.
  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  // Handles navigation and prompts refresh.
  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}

//change se pehle
//
// Widget build(BuildContext context) {
//   // final user = UserData.myUser;
//   // cons1.ProfilePage1();
//   String name="Not updated";
//   final LoginPage loginscreen = new LoginPage();
//   final _auth2 = FirebaseAuth.instance;
//   String email1 = _auth2.currentUser.uid;
//   final TodoProvider todo1 = new TodoProvider();
//   String url1 = loginscreen.Globalurl;
//   url1 = url1 + email1;
//   url1 = url1 + '?format=json';
//   final url = url1;
//   // String name = "Not Updated";
//
//   Future<String> getname() async {
//     int x1 = await todo1.fetchTasks(url);
//     if (x1 == 1) {
//       Todo x5 = await todo1.fetchTasks2(url);
//       // print(x5.name);
//       // setState (() => name=x5.name);
//       return x5.name;
//     }
//
//     return "kuch bhi";
//   }
//
//   return Scaffold(
//     body: Column(
//       children: [
//         AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           toolbarHeight: 10,
//         ),
//         Center(
//             child: Padding(
//                 padding: EdgeInsets.only(bottom: 20),
//                 child: Text(
//                   'Edit Profile',
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w700,
//                     color: Color.fromRGBO(64, 105, 225, 1),
//                   ),
//                 ))),
//         InkWell(
//           onTap: () {
//             // navigateSecondPage(EditImagePage());
//           },
//           child: new Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new Container(
//                   width: 140.0,
//                   height: 140.0,
//                   decoration: new BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: new DecorationImage(
//                       image: new ExactAssetImage(
//                           'assets/images/as.png'),
//                       fit: BoxFit.cover,
//                     ),
//                   )),
//             ],
//           ),),
//         buildUserInfoDisplay( cons1.name,'Name', EditNameFormPage()),
//         buildUserInfoDisplay("Not Updated", 'Phone', EditPhoneFormPage()), // age and delivery date
//         buildUserInfoDisplay("Not Updated", 'Age', EditAgeFormPage()),
//         buildUserInfoDisplay("Not Updated", 'Expected Delivery Date', EditDateFormPage()),
//         // Expanded(
//         //   child: buildAbout(user),
//         //   flex: 4,
//         // )
//       ],
//     ),
//   );
// }