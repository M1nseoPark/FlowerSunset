import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
}