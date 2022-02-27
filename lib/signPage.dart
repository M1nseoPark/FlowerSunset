import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flower_sunset/data/user.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  FirebaseDatabase? _database;
  DatabaseReference? reference;
  String _databaseURL = 'https://flowersunset-f64ab-default-rtdb.firebaseio.com/';

  TextEditingController? _nameTextController;
  TextEditingController? _idTextController;
  TextEditingController? _pwTextController;
  TextEditingController? _pwCheckTextController;

  @override
  void initState() {
    super.initState();

    _nameTextController = TextEditingController();
    _idTextController = TextEditingController();
    _pwTextController = TextEditingController();
    _pwCheckTextController = TextEditingController();

    _database = FirebaseDatabase(databaseURL: _databaseURL);
    reference = _database?.reference().child('user');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 70, 200, 0),
                        child: Image.asset('repo/images/logo.png', width: 70,),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 180, 12),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                            width: 280,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '이름',
                                border: OutlineInputBorder(),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Container(
                            width: 280,
                            height: 60,
                            child: TextField(
                              controller: _idTextController,
                              decoration: InputDecoration(
                                hintText: '아이디 (4자 이상 입력해주세요)',
                                border: OutlineInputBorder(),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Container(
                            width: 280,
                            height: 60,
                            child: TextField(
                              controller: _pwTextController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: '비밀번호 (6자 이상 입력해주세요)',
                                border: OutlineInputBorder(),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: Container(
                            width: 280,
                            height: 60,
                            child: TextField(
                              controller: _pwCheckTextController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: '비밀번호 확인',
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
                            child: const Text('SIGN UP', style: TextStyle(fontSize: 20),),
                            onPressed: () {
                              if (_idTextController!.value.text.length >= 4 &&
                                  _pwTextController!.value.text.length >= 6 &&
                                  _nameTextController!.value.text.length >= 0) {

                                if (_pwTextController!.value.text ==
                                    _pwCheckTextController!.value.text) {
                                  var bytes = utf8.encode(_pwCheckTextController!.value.text);
                                  var digest = sha1.convert(bytes);

                                  reference!
                                      .child(_idTextController!.value.text)
                                      .push()
                                      .set(User(_idTextController!.value.text,
                                          digest.toString(), DateTime.now().toIso8601String())
                                          .toJson())
                                      .then((_) {
                                    Navigator.of(context).pop();
                                  });
                                }
                                else {
                                  makeDialog('비밀번호가 틀립니다');
                                }
                              }
                              else {
                                makeDialog('길이가 짧습니다');
                              }
                            },
                          ),),
                      ),
                    ],
                  )
                ],
            )
        ),
    );
  }

  void makeDialog(String text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(text),
          );
        }
    );
  }
}