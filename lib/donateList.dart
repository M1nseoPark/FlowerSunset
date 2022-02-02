import 'package:flutter/material.dart';
import 'donateItem.dart';

class DonateList extends StatelessWidget {
  final List<Senior>? list;
  DonateList({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 280,
                    height: 100,
                    child: Container( color: Color(0xffF87366)),
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
            )

          ),
        )
    );
  }
}
