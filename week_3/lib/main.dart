/*
@author: ilhamitugral <ilhamitugral[at]gmail.com>
@date: 29 October 2020

UZEMYO - Mobile Programming - Week 3 Homework
*/

import 'package:flutter/material.dart';

void main() {
  runApp(IlhamisApp());
}

class IlhamisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ilhami\'s App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF363636),
          title: Text("Ilhami's App"),
        ),
        body: IlhamisAppHomepage(),
      ),
    );
  }
}

class IlhamisAppHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle keyStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Color(0xFFFFFFFF),
    );

    TextStyle valueStyle = TextStyle(
      fontSize: 24,
      color: Color(0xFFC4C4C4),
    );

    return Container(
      color: Color(0xFF484848),
      padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 32.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 128,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
            child: Text(
              "UŞAK ÜNİVERSİTESİ YARIŞMACISI",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "İsim: ",
                style: keyStyle,
              ),
              Text(
                "İlhami TUĞRAL",
                style: valueStyle,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Numara: ",
                style: keyStyle,
              ),
              Text(
                "192855037",
                style: valueStyle,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Şehir: ",
                style: keyStyle,
              ),
              Text(
                "Muğla",
                style: valueStyle,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 32.0),
            child: Center(
              child: Image.network(
                "https://i.pinimg.com/originals/1b/11/40/1b1140cdc8e1dc5e89db0facb30327f8.png",
                width: 192,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                "© İlhami TUĞRAL - Tüm Hakları Saklıdır.",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
