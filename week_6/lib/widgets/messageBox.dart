import 'package:flutter/material.dart';
import 'package:week_6/config/config.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key key,
    this.text,
    this.type,
  }) : super(key: key);

  final String text;
  final bool type;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        this.type
            ? Expanded(
                child: Container(),
              )
            : Container(),
        Container(
          constraints: BoxConstraints(maxWidth: size.width * .75),
          padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
          margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: this.type ? myMessageColor : Color(0xFF444444),
          ),
          child: Text(
            this.text,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
            ),
          ),
        ),
        !this.type
            ? Expanded(
                child: Container(),
              )
            : Container(),
      ],
    );
  }
}
