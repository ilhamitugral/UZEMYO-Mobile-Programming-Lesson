import 'package:flutter/material.dart';

class CallScreenCircleButton extends StatelessWidget {
  const CallScreenCircleButton({
    Key key,
    this.icon,
    this.imageSrc,
    this.onClick,
    this.bgColor = const Color(0xFF303030),
    this.text,
  }) : super(key: key);

  final Image imageSrc;
  final Icon icon;
  final Function onClick;
  final Color bgColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    double buttonSize = 99;
    return Column(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonSize),
          color: this.bgColor,
        ),
        width: buttonSize,
        height: buttonSize,
        child: RaisedButton(
          color: Colors.transparent,
          onPressed: this.onClick,
          child: this.icon != null ? this.icon : this.imageSrc,
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 12),
        child: Text(
          this.text == null ? '' : this.text,
          style: TextStyle(
            color: Color(0xFFA5A5A5),
            fontSize: 22,
          ),
        ),
      ),
    ]);
  }
}
