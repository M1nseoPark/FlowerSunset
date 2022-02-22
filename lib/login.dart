import 'dart:async';
import 'dart:convert';
import 'dart:math';

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

    // _animationController = AnimationController(duration: Duration(seconds: 3), vsync: this);
    // _animation = Tween<double>(begin: 0, end: pi * 2).animate(_animationController!);
    // _animationController!.repeat();

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
                  // AnimatedBuilder(
                  //     animation: _animationController!,
                  //     builder: (context, widget) {
                  //       return Transform.rotate(
                  //           angle: _animation!.value,
                  //           child: widget,);
                  //     })
                  Image.asset('repo/images/logo.png', width: 70,),
                  Padding(
                    padding: EdgeInsets.all(10),
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
                            hintText: '아이디',
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
                            hintText: '비밀번호',
                            border: OutlineInputBorder(),
                          ),
                        )
                    ),
                  ),


                  // ##### 로그인 버튼 #####
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Color(0xffF87366)),
                        child: const Text('LOGIN', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          if (_idTextController!.value.text.length == 0 ||
                            _pwTextController!.value.text.length == 0) {
                            makeDialog('빈칸이 있습니다');
                          }
                          else {
                            reference!
                                .child(_idTextController!.value.text)
                                .onValue
                                .listen((event) {
                                  if (event.snapshot.value == null) {
                                    makeDialog('아이디가 없습니다');
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
                                            makeDialog('비밀번호가 틀립니다');
                                          }
                                    });
                                  }
                            });
                          }
                        },
                      ),),
                  ),


                  // ##### 회원가입 버튼 #####
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '아직 계정이 없으신가요?',
                          style: TextStyle(color: Color(0xff838383), fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/sign');
                          },
                          child: Text('  가입하기',
                            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
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