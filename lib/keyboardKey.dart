import 'package:flutter/material.dart';

class KeyboardKey extends StatefulWidget {
  final dynamic label;
  final dynamic value;
  final ValueSetter<dynamic> onTap;

  KeyboardKey({
    required this.label,
    required this.onTap,
    required this.value,
  })  : assert(label != null),
        assert(onTap != null),
        assert(value != null);

  @override
  State<KeyboardKey> createState() => _KeyboardKey();
}


class _KeyboardKey extends State<KeyboardKey> {
  renderLabel() {
    if(widget.label is String) {
      return Text(
        widget.label,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else {
      return widget.label;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap(widget.value);
      },
      child: AspectRatio(
        aspectRatio: 2,
        child: Container(
          child: Center(
            child: renderLabel(),
          ),
        ),
      ),
    );
  }
}