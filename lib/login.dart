import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flower_sunset/signPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:crypto/crypto.dart';
import 'package:flower_sunset/data/user.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  FirebaseDatabase? _database;
  DatabaseReference? reference;
  String _databaseURL = 'https://flowersunset-f64ab-default-rtdb.firebaseio.com/';

  double opacity = 0;
  AnimationController? _animationController;
  Animation? _animation;
  TextEditingController? _idTextController;
  TextEditingController? _pwTextController;

  @override
  void initState() {
    super.initState();

    _idTextController = TextEditingController();
    _pwTextController = TextEditingController();

    Timer(Duration(seconds: 2), () {
      setState(() {
        opacity = 1;
      });
    });

    _database = FirebaseDatabase(databaseURL: _databaseURL);
    reference = _database!.reference().child('user');
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: Image.asset('repo/images/logo.png', width: 70,),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 12, 180, 12),
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        width: 280,
                        height: 60,
                        child: TextField(
                          controller: _idTextController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: '?????????',
                            border: OutlineInputBorder(),
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        width: 280,
                        height: 60,
                        child: TextField(
                          controller: _pwTextController,
                          obscureText: true,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: '????????????',
                            border: OutlineInputBorder(),
                          ),
                        )
                    ),
                  ),


                  // ##### ????????? ?????? #####
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Color(0xffF87366)),
                        child: const Text('LOGIN', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          if (_idTextController!.value.text.length == 0 ||
                            _pwTextController!.value.text.length == 0) {
                            makeDialog('????????? ????????????');
                          }
                          else {
                            reference!
                                .child(_idTextController!.value.text)
                                .onValue
                                .listen((event) {
                                  if (event.snapshot.value == null) {
                                    makeDialog('???????????? ????????????');
                                  }
                                  else {
                                    reference!
                                        .child(_idTextController!.value.text)
                                        .onChildAdded
                                        .listen((event) {
                                          User user = User.fromSnapshot(event.snapshot);
                                          var bytes = utf8.encode(_pwTextController!.value.text);
                                          var digest = sha1.convert(bytes);
                                          if (user.pw == digest.toString()) {
                                            Navigator.of(context).pushReplacementNamed('/home',
                                              arguments: _idTextController!.value.text);
                                          }
                                          else {
                                            makeDialog('??????????????? ????????????');
                                          }
                                    });
                                  }
                            });
                          }
                        },
                      ),),
                  ),


                  // ##### ???????????? ?????? #####
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          '?????? ????????? ????????????????',
                          style: TextStyle(color: Color(0xff838383), fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/sign');
                          },
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignUpPage())
                              );
                            },
                            child: Text(
                              '????????????', //title
                              // textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

  void makeDialog(String text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(text),
          );
        });
  }
}