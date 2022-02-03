import 'package:flutter/material.dart';
import 'donateItem.dart';

class DonateList extends StatelessWidget {
  final List<Senior>? list;
  DonateList({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('삼익아파트 112동',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
          child: Center(
            child: Column(
                children: <Widget>[
                  Container(
                      width: 300,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Color(0xffF87366),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                            child: Text(
                              '내 위치 근처 나눔 추천',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Text(
                              '원포원 기부를 통해 따뜻한 마음을 전해요',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: Colors.white),
                              child: const Text('자세히', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                          ),)
                        ],
                      )
                    ),
                    ListView.builder(itemBuilder: (context, position) {
                      return Card(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              list![position].imagePath!,
                              height: 90,
                              width: 90,
                              fit: BoxFit.contain,
                            ),
                            Text(list![position].seniorName!),
                            Text(list![position].seniorDetail!),
                          ],
                        ),
                      );},
                      itemCount: list!.length,
                    ),
                  ]
            ),
                  

            )

          ),
    );
  }
}
