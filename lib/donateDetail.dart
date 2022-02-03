import 'package:flower_sunset/donateDatail_1.dart';
import 'package:flower_sunset/donateDetail_2.dart';
import 'package:flutter/material.dart';


class DonateDetail extends StatefulWidget {
  @override
  State<DonateDetail> createState() => _DonateDetail();
}

class _DonateDetail extends State<DonateDetail> with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined, color: Colors.white,), onPressed: null,),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Center(
          child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 180,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('배고픔보다 정이 고픈\n이영자 어르신',
                        style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      background: Image.asset('repo/images/test_image.jpg', height: 250, fit: BoxFit.cover,),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                              child: Container(
                                width: 90,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: Color(0xffc4c4c4),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                            ),
                            Container(
                                child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                                        child: Container(
                                          width: 300,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(left: 18),
                                                child: Container(
                                                  width: 75,
                                                  height: 75,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffe5e5e5),
                                                      borderRadius: BorderRadius.circular(100)
                                                  ),
                                                  child: Image.asset('repo/images/money.png'),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                                                    child: Text(
                                                      '현금으로 기부하기',
                                                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                                    child: Text(
                                                      '1000원부터 기부 가능해요',
                                                      style: TextStyle(color: Color(0xff5c5c5c), fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: Container(
                                          width: 300,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(left: 18),
                                                child: Container(
                                                  width: 75,
                                                  height: 75,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffe5e5e5),
                                                      borderRadius: BorderRadius.circular(100)
                                                  ),
                                                  child: Image.asset('repo/images/plant.png'),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                                                    child: Text(
                                                      '반려식물 기부하기',
                                                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                                    child: Text(
                                                      '어르신께 같은 식물이 기부돼요',
                                                      style: TextStyle(color: Color(0xff5c5c5c), fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                                        child: Container(
                                          width: 300,
                                          height: 110,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(left: 18),
                                                child: Container(
                                                  width: 75,
                                                  height: 75,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffe5e5e5),
                                                      borderRadius: BorderRadius.circular(100)
                                                  ),
                                                  child: Image.asset('repo/images/earrings.png'),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                                                    child: Text(
                                                      '굿즈 구매하기',
                                                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                                    child: Text(
                                                      '어르신께 생필품이 기부돼요',
                                                      style: TextStyle(color: Color(0xff5c5c5c), fontSize: 14),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]
                                )
                            ),
                            // TabBar(
                            //   tabs: <Tab>[Tab(text: '모금 소개',), Tab(text: '기부하기')
                            //   ], controller: controller,
                            // ),
                            // TabBarView(
                            //   children: <Widget>[
                            //     Container(),
                            //     Container(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Padding(
                            //             padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                            //             child: Container(
                            //               color: Colors.white,
                            //               width: 400,
                            //               height: 200,
                            //               child: Row(
                            //
                            //               ),
                            //             ),
                            //           ),
                            //           Padding(
                            //             padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                            //             child: Container(
                            //               color: Colors.white,
                            //               width: 400,
                            //               height: 200,
                            //               child: Row(
                            //
                            //               ),
                            //             ),
                            //           ),
                            //           Padding(
                            //             padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                            //             child: Container(
                            //               color: Colors.white,
                            //               width: 400,
                            //               height: 200,
                            //               child: Row(
                            //
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     )
                            //   ],
                            //   controller: controller,
                            // ),
                          ],
                        ),
                      )
                    ]),
                  )
                ],
          ),
      ),
    ),
    );
  }
}