import 'package:flutter/material.dart';
import 'package:banaripara/page/flush_page.dart';
import 'package:banaripara/page/login.dart';
import 'package:banaripara/page/registration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Banaripara',
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
