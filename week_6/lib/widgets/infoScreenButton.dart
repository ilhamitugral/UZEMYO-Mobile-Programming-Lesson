import 'package:flutter/material.dart';

import 'package:week_6/widgets/myDecoration.dart';

class InfoScreenButton extends StatelessWidget {
  const InfoScreenButton({
    Key key,
    this.text,
    this.icon,
    this.iconSrc,
    this.width = 0,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final Image iconSrc;
  final double width;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 75,
        decoration: MyDecoration().get(),
        margin: EdgeInsets.only(left: 4, right: 4),
        child: RaisedButton(
          color: Color(0xFF272727),
          onPressed: this.onTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: this.icon != null ? this.icon : this.iconSrc,
              ),
              Container(
                child: Text(
                  this.text,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
