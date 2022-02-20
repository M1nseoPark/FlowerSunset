import 'package:flutter/material.dart';

class DestinationPage extends StatefulWidget {
  @override
  State<DestinationPage> createState() => _DestinationPage();
}

class _DestinationPage extends State<DestinationPage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

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
          title: Text('배송지 등록/변경',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),

        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text('받는 분',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Container(
                    width: 310,
                    child: TextField(
                      keyboardType: TextInputType.text, controller: name,
                      decoration: new InputDecoration(
                        hintText: '받는 분을 입력해주세요',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xffBEBEBE), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xffBEBEBE)),
                        ),
                      ),
                      style: TextStyle(height: 0.6),
                    ),
                  )
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
                child: Text('휴대폰 번호',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Container(
                    width: 310,
                    child: TextField(
                      keyboardType: TextInputType.number, controller: phone,
                      decoration: new InputDecoration(
                        hintText: '-없이 휴대폰 번호를 입력해주세요',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xffBEBEBE), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xffBEBEBE)),
                        ),
                      ),
                      style: TextStyle(height: 0.6),
                    ),
                  )
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
                child: Text('주소',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
              ),
            ],
          ),
        ),

        bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Color(0xffF87366)),
          child: const Text('확인',
            style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),),
          onPressed: () {},
        )
    );
  }
}
