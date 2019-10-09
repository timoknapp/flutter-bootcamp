import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.text, this.textColor});

  final IconData icon;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
