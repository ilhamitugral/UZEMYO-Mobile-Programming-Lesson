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
    String phoneNumber = '+90 555 555 55 55';
    String personName = 'İlhami Tuğral';
    double iconSize = 18;

    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 24, left: 8, right: 8),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Panel(
                        iconSrc: Image.asset(
                          'assets/images/speech-bubble.png',
                          width: iconSize,
                        ),
                        text: 'mesaj',
                      ),
                      Panel(
                        icon: Icon(
                          Icons.call,
                          size: iconSize,
                          color: Color(0xFFFFFFFF),
                        ),
                        text: 'ara',
                      ),
                      Panel(
                        iconSrc: Image.asset(
                          'assets/images/whatsapp.png',
                          width: iconSize,
                        ),
                        text: 'whatsapp',
                      ),
                      Panel(
                        iconSrc: Image.asset(
                          'assets/images/mail.png',
                          width: iconSize,
                        ),
                        text: 'e-posta',
                      ),
                    ],
                  ),
                  Container(
                    width: size.width,
                    decoration: MyDecoration().get(),
                    margin: EdgeInsets.only(top: 6),
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
                    margin: EdgeInsets.only(top: 14),
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
                    margin: EdgeInsets.only(top: 14),
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
                    margin: EdgeInsets.only(top: 14, bottom: 18),
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
      ),
    );
  }
}

class Panel extends StatelessWidget {
  const Panel({
    Key key,
    this.text,
    this.icon,
    this.iconSrc,
    this.width = 0,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final Image iconSrc;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 65,
        margin: EdgeInsets.only(left: 4, right: 4),
        padding: EdgeInsets.only(top: 7, bottom: 7),
        child: RaisedButton(
          color: Color(0xFF272727),
          onPressed: () {},
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
                      fontSize: 10,
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

class MyDecoration {
  BoxDecoration get() {
    return BoxDecoration(
      color: const Color(0xFF272727),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
