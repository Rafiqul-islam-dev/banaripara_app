import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class AdminInfo extends StatefulWidget {
  const AdminInfo({super.key});

  @override
  State<AdminInfo> createState() => _AdminInfoState();
}

class _AdminInfoState extends State<AdminInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "আমাদের বানারীপাড়া",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
    backgroundColor: Colors.green,
    ),
    drawer: const AppDrawer(),
    );
  }
}
