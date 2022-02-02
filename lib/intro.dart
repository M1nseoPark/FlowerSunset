import 'dart:async';
import 'package:flower_sunset/login.dart';
import 'package:flower_sunset/main.dart';
import 'package:flower_sunset/signUp.dart';
import 'donateList.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IntroPage();
}

class _IntroPage extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    // Navigator - 페이지 이동
    // 현재 페이지를 스택에 남겨놓고 MyHomePage로 이동
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: const Color(0xffFBB6AF),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'repo/images/logo.png',
                width: 130,
              ),
              Image.asset(
                'repo/images/logo_2.png',
                width: 190,
              )
            ],
          ),
        ),
      )
    );
  }
}

