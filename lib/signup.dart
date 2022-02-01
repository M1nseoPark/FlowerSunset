import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
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
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Sign Up', 
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
                          decoration: InputDecoration(
                            hintText: '이메일 주소',
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
                          decoration: InputDecoration(
                            hintText: '아이디',
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
                          decoration: InputDecoration(
                            hintText: '비밀번호',
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
                        onPressed: (){},
                      ),),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}