import 'package:banaripara/widgets/app_drawer.dart';
import 'package:banaripara/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  final List<String> bannerImages = [
    'https://i.ibb.co.com/L6XrX0q/462224588-924027206418240-6020533941583157512-n.jpg',
    'https://i.ibb.co.com/X2fc1Nj/267525004-1340441659706313-8678375803736625064-n.jpg',
    'https://i.ibb.co.com/HXnmBGm/461178613-3371822983120999-5428225248020846696-n.jpgg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "আমাদের বানারীপাড়া",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'nameFont',
            ),
          ),
          backgroundColor: Colors.green,
        ),
        drawer: const AppDrawer(),
        body: Column(
            children: [
              SizedBox(height: size.height * 0.01),
              CustomCarousel(images: bannerImages),
              const SizedBox(height: 10),
            ]
        )
    );

  }
}
