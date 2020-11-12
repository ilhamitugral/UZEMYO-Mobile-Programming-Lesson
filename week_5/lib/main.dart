import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ilhami\'s App',
      home: IlhamisApp(),
    );
  }
}

class IlhamisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color textColor = Color(0xFFFFFFFF);
    double actionButtonWidth = 80.75;
    String phoneNumber = '+90 555 555 55 55';
    String personName = 'İlhami Tuğral';

    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: null,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 55, left: 28, right: 28),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/user.png',
                  width: 96,
                ),
                Container(
                  margin: EdgeInsets.only(top: 21, bottom: 21),
                  child: Text(
                    personName,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyBox(
                        width: actionButtonWidth,
                        icon: 'assets/images/speech-bubble.png',
                        text: 'mesaj'),
                    MyBox(
                        width: actionButtonWidth,
                        icon: 'assets/images/phone-call.png',
                        text: 'ara'),
                    MyBox(
                        width: actionButtonWidth,
                        icon: 'assets/images/whatsapp.png',
                        text: 'whatsapp'),
                    MyBox(
                        width: actionButtonWidth,
                        icon: 'assets/images/mail.png',
                        text: 'e-posta'),
                  ],
                ),
                Container(
                  width: size.width,
                  decoration: MyDecoration().get(),
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.fromLTRB(11, 10, 11, 10),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'cep',
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Text(
                        phoneNumber,
                        style: TextStyle(color: textColor),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: 44,
                  decoration: MyDecoration().get(),
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.fromLTRB(11, 10, 11, 10),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Facetime',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 44,
                  decoration: MyDecoration().get(),
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.fromLTRB(11, 10, 11, 10),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Notlar',
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  decoration: MyDecoration().get(),
                  margin: EdgeInsets.only(top: 18),
                  padding: EdgeInsets.fromLTRB(11, 10, 11, 10),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Mesaj Gönder',
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7.5, bottom: 7.5),
                        color: Color(0xFFA0A0A0),
                        height: 1,
                      ),
                      Container(
                        child: Text(
                          'Kişiyi Paylaş',
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7.5, bottom: 7.5),
                        color: Color(0xFFA0A0A0),
                        height: 1,
                      ),
                      Container(
                        child: Text(
                          'Hızlı Aramaya Ekle',
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7.5, bottom: 7.5),
                        color: Color(0xFFA0A0A0),
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  const MyBox({
    Key key,
    this.text,
    this.icon,
    this.width = 0,
  }) : super(key: key);

  final String text;
  final String icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    double _width =
        this.width == 0 ? MediaQuery.of(context).size.width : this.width;
    return Container(
      width: _width,
      margin: EdgeInsets.only(left: 4, right: 4),
      padding: EdgeInsets.only(top: 7, bottom: 7),
      decoration: MyDecoration().get(),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Image.asset(this.icon, width: 24),
          ),
          Text(
            this.text,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class MyDecoration {
  BoxDecoration get() {
    return BoxDecoration(
      color: const Color(0xFF272727),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
