import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Color(0xffF87366),
              ),
              onPressed: (){},)
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),

        body: Container(
          child: Center(
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                // child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 20),
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
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 10, 0, 20),
                          child: Image.asset('repo/images/profile.png', width: 85,),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 80,
                                  child: Image.asset('repo/images/plant.png',),
                                  decoration: BoxDecoration(
                                      color: Color(0xff82B432),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 7, 0, 30),
                                  child: Text('반려식물',
                                    style: TextStyle(color: Color(0xff696969), fontSize: 15,),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 80,
                                  child: Image.asset('repo/images/airpods_case.png',),
                                  decoration: BoxDecoration(
                                      color: Color(0xff82B432),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 7, 0, 30),
                                  child: Text('에어팟케이스',
                                    style: TextStyle(color: Color(0xff696969), fontSize: 15,),),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  width: 80,
                                  child: Image.asset('repo/images/earrings.png',),
                                  decoration: BoxDecoration(
                                      color: Color(0xff82B432),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 7, 0, 30),
                                  child: Text('에어팟키링',
                                    style: TextStyle(color: Color(0xff696969), fontSize: 15,),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 15, 0, 10),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 50, 30),
                            child: Column(
                                children: <Widget>[
                                  Text(
                                    '3건',
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                        '참여 후원',
                                        style: TextStyle(color: Color(0xff838383),
                                          fontSize: 15,)
                                    ),
                                  )
                                ]
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 0, 30),
                            child: Column(
                                children: <Widget>[
                                  Text(
                                    '30,000원',
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                        '총 후원 금액',
                                        style: TextStyle(color: Color(0xff838383),
                                          fontSize: 15,)
                                    ),
                                  )
                                ]
                            )
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 15, 0, 20),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'repo/images/profile.png',
                                width: 70,),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                    '이영자 님',
                                    style: TextStyle(color: Color(0xff838383),
                                      fontSize: 15,)
                                ),
                              )
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                          child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'repo/images/profile.png',
                                  width: 70,),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                      '이영자 님',
                                      style: TextStyle(color: Color(0xff838383),
                                        fontSize: 15,)
                                  ),
                                )
                              ],
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                          child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'repo/images/profile.png',
                                  width: 70,),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                      '이영자 님',
                                      style: TextStyle(color: Color(0xff838383),
                                        fontSize: 15,)
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ),
          ),
    );
  }
}