import 'package:flutter/material.dart';

import 'package:week_6/widgets/all.widgets.dart';
import 'package:week_6/config/config.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: null,
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: size.height * .05),
                child: Text(
                  personName,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '00:00',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * .075,
                  bottom: size.height * .075,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CallScreenCircleButton(
                      heroTag: 'microphoneButton',
                      imageSrc: Image.asset('${imagesSrc}Microphone.png'),
                      onClick: () {},
                      text: 'sesi kapat',
                    ),
                    CallScreenCircleButton(
                      heroTag: 'keypadButton',
                      imageSrc: Image.asset('${imagesSrc}KeypadIcon.png'),
                      onClick: () {},
                      text: 'klavye',
                    ),
                    CallScreenCircleButton(
                      heroTag: 'speakerButton',
                      imageSrc: Image.asset('${imagesSrc}SpeakerIcon.png'),
                      onClick: () {},
                      text: 'hoparlör',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CallScreenCircleButton(
                      heroTag: 'addCallButton',
                      imageSrc: Image.asset('${imagesSrc}AddCallIcon.png'),
                      onClick: () {},
                      text: 'arama ekle',
                    ),
                    CallScreenCircleButton(
                        heroTag: 'facetimeButton',
                        imageSrc: Image.asset('${imagesSrc}FacetimeIcon.png'),
                        onClick: () {},
                        text: 'FaceTime'),
                    CallScreenCircleButton(
                        heroTag: 'contactsIcon',
                        imageSrc: Image.asset('${imagesSrc}ContactsIcon.png'),
                        onClick: () {},
                        text: 'kişiler'),
                  ],
                ),
              ),
              Container(
                child: Transform.rotate(
                  angle: 135 * 3.1415 / 180,
                  child: CallScreenCircleButton(
                    heroTag: 'exitCallButton',
                    bgColor: Color(0xFFEB4E3D),
                    icon: Icon(
                      Icons.call,
                      size: 48,
                      color: Color(0xFFFFFFFF),
                    ),
                    onClick: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * .05,
                  bottom: size.height * .05,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
