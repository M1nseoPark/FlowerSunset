import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:crypto/crypto.dart';


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
                          decoration: InputDecoration(
                            hintText: '이메일 주소',
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
                          decoration: InputDecoration(
                            hintText: '비밀번호',
                            border: OutlineInputBorder(),
                          ),
                        )
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Color(0xffF87366)),
                        child: const Text('LOGIN', style: TextStyle(fontSize: 20),),
                        onPressed: (){},
                      ),),
                  ),

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
                        child: Text(
                          '  가입하기',
                          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
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