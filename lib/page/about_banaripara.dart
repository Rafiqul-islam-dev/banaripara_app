import 'package:banaripara/page/banaripara_details.dart';
import 'package:banaripara/page/banaripara_freedom_fighter.dart';
import 'package:banaripara/page/banaripara_map.dart';
import 'package:banaripara/page/banaripara_municipality.dart';
import 'package:banaripara/page/banaripara_union.dart';
import 'package:banaripara/page/baripara_school_college.dart';
import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import 'dashbord.dart';

class AboutBanaripara extends StatefulWidget {
  const AboutBanaripara({super.key});

  @override
  State<AboutBanaripara> createState() => _AboutBanariparaState();
}

class _AboutBanariparaState extends State<AboutBanaripara> {
  final List<String> bannerImages = [
    'https://styrenebd.com/asset/image1.jpg',
    'https://styrenebd.com/asset/image2.jpg',
    'https://styrenebd.com/asset/image.jpg',
  ];

  final List<Map<String, dynamic>> gridItems = [
    {'title': "বানারীপাড়া", 'icon': Icons.location_city, 'page': const BanariParaDetails()},
    {'title': "বানারীপাড়ার ম্যাপ", 'icon': Icons.map, 'page': const BanariparaMap()},
    {'title': "মুক্তিযুদ্ধে বানারীপাড়া", 'icon': Icons.flag, 'page': const BanariparaFreedomFighter()},
    {'title': "পৌরসভা", 'icon': Icons.apartment, 'page': const BanariparaMunicipality()},
    {'title': "জনপ্রতিনিধি", 'icon': Icons.people, 'page': const Placeholder()},
    {'title': "ইউনিয়ন", 'icon': Icons.public, 'page': const BanariparaUnion()},
    {'title': "গ্রাম", 'icon': Icons.terrain, 'page': const Placeholder()},
    {'title': "সরকারী অফিস", 'icon': Icons.business, 'page': const Placeholder()},
    {'title': "শিক্ষা প্রতিষ্ঠান", 'icon': Icons.school, 'page': const BanariparaSchoolCollege()},
    {'title': "প্রখ্যাত ব্যাক্তিত্ব", 'icon': Icons.star, 'page': const Placeholder()},
    {'title': "হাট-বাজার", 'icon': Icons.shopping_cart, 'page': const Placeholder()},
  ];

  int _selectedIndex = 0; // Move this to the class level for state management
  void _onBottomNavTap(int index) {
    setState(() => _selectedIndex = index);
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashbord()),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("আমাদের বানারীপাড়া"),
        backgroundColor: Colors.green,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          // Fixed CustomCarousel at the top
          SizedBox(
            height: size.height * 0.18, // Adjust the height of the carousel
            child: CustomCarousel(images: bannerImages),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "এক নজরে দেখে নিন আমার আপনার প্রীয় বানারীপাড়া",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontFamily: 'nameFont',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // GridView.builder inside Flexible for scrolling
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: gridItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of items in each row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final item = gridItems[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['page']),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item['icon'],
                            color: Colors.green,
                            size: 50,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item['title'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'textFont',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomNavTap, // Pass the navigation logic
      ),
    );
  }
}


// Example Placeholder Page
class Placeholder extends StatelessWidget {
  const Placeholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Placeholder Page"),
      ),
      body: const Center(
        child: Text("This is a placeholder page."),
      ),
    );
  }
}
