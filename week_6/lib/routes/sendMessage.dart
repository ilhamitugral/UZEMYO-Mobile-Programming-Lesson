import 'package:flutter/material.dart';
import 'package:week_6/config/config.dart';
import 'package:week_6/widgets/all.widgets.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(11),
              color: messageAppbarBgColor,
              child: Center(
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => {Navigator.pop(context)},
                      child: Image.asset('${imagesSrc}ReturnBack.png'),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          personName,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: appBgColor,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Mesaj',
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Text(
                        'Bugün 09:41',
                        style: TextStyle(color: textColor),
                      ),
                      MessageBox(
                        text: 'Selam dostum, bugün ders var. Katılacak mısın?',
                        type: false,
                      ),
                      MessageBox(
                        text:
                            'Saat 18:50\'de Mobil Programlama dersi var. Unutma!',
                        type: false,
                      ),
                      MessageBox(
                        text:
                            'Aaa ben o dersi unutmuşum. Yetişmeye çalışacağım...',
                        type: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
              color: messageAppbarBgColor,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.camera_alt,
                      color: textColor,
                      size: 28,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          width: 2,
                          color: Color(0xFF1D1D1D),
                        ),
                        color: Color(0xFF3E3E3E),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(14, 8, 14, 8),
                            child: Text(
                              "Mesaj",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFABABAB),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 6),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: myMessageColor,
                              borderRadius: BorderRadius.circular(27),
                            ),
                            child: Image.asset(
                              '${imagesSrc}UpArrow.png',
                              width: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
