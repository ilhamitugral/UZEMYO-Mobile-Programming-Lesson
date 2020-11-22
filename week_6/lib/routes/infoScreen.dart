import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:week_6/config/config.dart';
import 'package:week_6/widgets/all.widgets.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double iconSize = 24;

    return Scaffold(
      backgroundColor: appBgColor,
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: 24,
              left: 8,
              right: 8,
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    '${imagesSrc}Avatar.png',
                    width: 96,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 21,
                      bottom: 21,
                    ),
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
                      InfoScreenButton(
                        iconSrc: Image.asset(
                          '${imagesSrc}Message.png',
                          width: iconSize,
                        ),
                        text: 'mesaj',
                        onTap: () => {this._sendMessage(context, '/message')},
                      ),
                      InfoScreenButton(
                        icon: Icon(
                          Icons.call,
                          size: iconSize,
                          color: Color(0xFFFFFFFF),
                        ),
                        text: 'ara',
                        onTap: () => {this._call(context, '/call')},
                      ),
                      InfoScreenButton(
                        iconSrc: Image.asset(
                          '${imagesSrc}Whatsapp.png',
                          width: iconSize,
                        ),
                        text: 'whatsapp',
                        onTap: () => {_whatsappMessage(phoneNumber)},
                      ),
                      InfoScreenButton(
                        iconSrc: Image.asset(
                          '${imagesSrc}Mail.png',
                          width: iconSize,
                        ),
                        text: 'e-posta',
                        onTap: () => {_sendEmail(personEmail)},
                      ),
                    ],
                  ),
                  Container(
                    width: size.width,
                    decoration: MyDecoration().get(),
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.fromLTRB(11, 10, 11, 10),
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/call');
                      },
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/message');
                          },
                          child: Container(
                            child: Text(
                              'Mesaj Gönder',
                              style: TextStyle(color: textColor),
                            ),
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

  void _call(BuildContext context, String page) {
    Navigator.pushNamed(context, page);
  }

  void _sendMessage(BuildContext context, String page) {
    Navigator.pushNamed(context, page);
  }

  void _whatsappMessage(String number) {
    _openApp('whatsapp:$number', 'Whatsapp uygulaması bulunamadı');
  }

  void _sendEmail(String mail) {
    _openApp('mailto:$mail', 'E-posta uygulaması bulunamadı');
  }

  void _openApp(String uri, String error) async {
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Color(0xFF272727),
        textColor: Color(0xFFFFFFFF),
        fontSize: 16,
      );
    }
  }
}
