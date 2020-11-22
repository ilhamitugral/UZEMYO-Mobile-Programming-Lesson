import 'package:flutter/material.dart';

// Routes
import 'package:week_6/routes/callScreen.dart';
import 'package:week_6/routes/infoScreen.dart';
import 'package:week_6/routes/sendMessage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ilhami\'s App',
      initialRoute: '/',
      routes: {
        '/': (context) => InfoScreen(),
        '/call': (context) => CallScreen(),
        '/message': (context) => MessageScreen(),
      },
    );
  }
}
