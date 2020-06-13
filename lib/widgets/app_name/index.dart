import 'package:flutter/material.dart';

class WidgetStrokedText extends StatelessWidget {
  final int fontSize;
  final String text;

  const WidgetStrokedText({@required this.text, this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text('RIFE',
            style: TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Colors.black)),
        Text('RIFE',
            style: TextStyle(
                fontSize: 96, fontWeight: FontWeight.bold, color: Colors.white))
      ],
    );
  }
}
