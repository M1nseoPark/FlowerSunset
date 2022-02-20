import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마이페이지',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),

      body: Container(
        color: Color(0xffF1F1F1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: Container(
                color: Colors.white,
                height: 110,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Image.asset('repo/images/profile.png', width: 70,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text('홍길동 님',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(110, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined,),
                          onPressed: () {}
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: Colors.white,
              width: double.infinity,
              height: 430,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 20, 0, 0),
                    child: Text('배송지 설정',
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          width: 320,
                          child: Divider(color: Color(0xffBEBEBE), thickness: 1.0))
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 0, 0),
                    child: Text('나의 기부내역',
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          width: 320,
                          child: Divider(color: Color(0xffBEBEBE), thickness: 1.0))
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 0, 0),
                    child: Text('공지사항',
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          width: 320,
                          child: Divider(color: Color(0xffBEBEBE), thickness: 1.0))
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 0, 0),
                    child: Text('이벤트',
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          width: 320,
                          child: Divider(color: Color(0xffBEBEBE), thickness: 1.0))
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 0, 0),
                    child: Text('고객센터',
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          width: 320,
                          child: Divider(color: Color(0xffBEBEBE), thickness: 1.0))
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 15, 0, 0),
                    child: Text('환경설정',
                      style: TextStyle(color: Colors.black, fontSize: 18),),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      child: Container(
                          width: 320,
                          child: Divider(color: Color(0xffBEBEBE), thickness: 1.0))
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}