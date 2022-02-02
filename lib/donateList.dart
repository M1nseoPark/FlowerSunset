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
            child: ListView.builder(itemBuilder: (context, position) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      list![position].imagePath!,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    Text(list![position].seniorName!)
                  ],
                ),
              );},
              itemCount: list!.length,
            ),
          ),
        )
    );
  }
}
