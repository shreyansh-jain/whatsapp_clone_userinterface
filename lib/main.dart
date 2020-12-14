import 'package:flutter/material.dart';
import 'package:whatsapp_clone_userinterface/WhatsappHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Whatsapp UI Clone',
        theme: new ThemeData(
            primaryColor: new Color(0xff075E54),
            accentColor: new Color(0xff25D366)),
            debugShowCheckedModeBanner: false,
        home: WhatsappHome());
  }
}
