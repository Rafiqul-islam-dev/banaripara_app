
import 'package:flutter/material.dart';
import 'package:banaripara/page/flush_page.dart';
import 'package:banaripara/page/login.dart';
import 'package:banaripara/page/registration.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FlushPage(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Registration(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

