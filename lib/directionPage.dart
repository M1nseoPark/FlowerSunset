import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Direction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,

      body: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('repo/images/direction_back.jpg'),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                    child: Text('"독거노인분들께\n 삶의 반려를 만들어주세요"',
                      style: TextStyle(color: Colors.black, fontSize: 28, fontFamily: 'chilbaeksam'),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 10, 30),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: '꽃노을은 독거노인분들의 우울문제를 돕기 위해\n'
                              '시작된 사회적 프로젝트입니다.\n'
                              '여러분께서 후원해주시는 리워드는 독거노인께\n'
                              '반려식물과 생필품으로 전달됩니다.\n'
                              '독거노인께 따뜻한 메시지와 함께 마음을 전해주세요\n',
                              style: TextStyle(
                                color: Colors.black, fontSize: 15,)),
                          TextSpan(text: '*모든 기부자에게는 기부 후 인증사진이 전송됩니다',
                              style: TextStyle(color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w900,)),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 10, 20),
                        child: Image.asset('repo/images/money_pink.png', width: 60,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
                            child: Text('현금으로 기부하기',
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w900),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 10, 20),
                            child: Text('독거노인께도 동일한 금액의 현금이\n전달돼요',
                              style: TextStyle(color: Colors.black, fontSize: 15,),),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 10, 20),
                        child: Image.asset('repo/images/plant_pink.png', width: 60,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
                            child: Text('반려식물 구매하기',
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w900),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 10, 20),
                            child: Text('독거노인께도 동일한 반려식물이\n전달돼요 (상황에 따라 생필품으로\n대체될 수 있음)',
                              style: TextStyle(color: Colors.black, fontSize: 15,),),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 10, 20),
                        child: Image.asset('repo/images/shopping_pink.png', width: 60,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
                            child: Text('굿즈 구매하기',
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w900),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 5, 10, 20),
                            child: Text('독거노인께는 동일한 가격의 생필품이\n전달돼요',
                              style: TextStyle(color: Colors.black, fontSize: 15,),),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}