import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: '안녕하세요,\n',
                                  style: TextStyle(
                                    color: Colors.black, fontSize: 30,)),
                              TextSpan(text: '홍길동 님',
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Image.asset('repo/images/profile.png', width: 80,),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 100,
                          width: 80,
                          child: Container(color: Color(0xff82B432),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 100,
                          width: 80,
                          child: Container(color: Color(0xff82B432),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 100,
                          width: 80,
                          child: Container(color: Color(0xff82B432),),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: '홍길동 님의 ', style: TextStyle(
                            color: Colors.black, fontSize: 20,)),
                          TextSpan(text: '후원 내역', style: TextStyle(color: Colors
                              .black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '3건',
                            style: TextStyle(color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '30,000원',
                            style: TextStyle(color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.all(20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: '홍길동 님이 ', style: TextStyle(
                            color: Colors.black, fontSize: 20,)),
                          TextSpan(text: '후원한 분', style: TextStyle(color: Colors
                              .black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          'repo/images/profile.png',
                          width: 70,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          'repo/images/profile.png',
                          width: 70,),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          'repo/images/profile.png',
                          width: 70,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}