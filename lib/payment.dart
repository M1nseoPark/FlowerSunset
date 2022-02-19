import 'package:flower_sunset/keyboardKey.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPage();
}

class _PaymentPage extends State<PaymentPage> {
  String amount = '';

  @override
  void initState() {
    super.initState();

    amount = '';
  }

  final keys = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['00', '0', Icon(Icons.keyboard_backspace)],
  ];

  onNumberPress(val) {
    if (val == '0' && amount.length == 0) {
      return;
    }

    setState(() {
      amount = amount + val;
    });
  }

  onBackspacePress(val) {
    setState(() {
      amount = amount.substring(0, amount.length - 1);
    });
  }

  renderKeyboard() {
    return keys
        .map(
          (x) => Row(
        children: x.map((y) {
          return Expanded(
            child: KeyboardKey(
              label: y,
              onTap: y is Widget ? onBackspacePress : onNumberPress,
              value: y,
            ),
          );
        }).toList(),
      ),
    ).toList();
  }

  renderConfirmButton() {
    return Row(
      children: [
        Expanded(
            child: FlatButton(
              onPressed: amount.length == 0 ? null : () {},   // 값이 없으면 disable
              color: Color(0xffF87366),
              disabledColor: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  '확인',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
        )
      ],
    );
  }

  renderText() {
    String display = '보낼금액';
    TextStyle style = TextStyle(
        color: Color(0xffBEBEBE),
        fontWeight: FontWeight.bold,
        fontSize: 30.0
    );

    if (amount.length != 0) {
      NumberFormat f = NumberFormat('#,###');

      display = f.format(int.parse(amount)) + '원';
      style = style.copyWith(
        color: Colors.black,
      );
    }

    return Expanded(
        child: Center(
          child: Text(
            display,
            style: style,
          ),
        )
    );
  }

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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                renderText(),
                ...renderKeyboard(),
                Container(height: 16.0,),
                renderConfirmButton(),
              ],
            ),
          )
      ),
    );
  }
}