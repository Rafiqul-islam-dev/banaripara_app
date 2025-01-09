import 'package:flutter/material.dart';
import '../data/union_data.dart';
import '../widgets/app_drawer.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import 'union_detail_page.dart';

class BanariparaUnion extends StatefulWidget {
  const BanariparaUnion({super.key});

  @override
  State<BanariparaUnion> createState() => _BanariparaUnionState();
}

class _BanariparaUnionState extends State<BanariparaUnion> {
  final List<Map<String, dynamic>> gridItems = [
    {'title': "বিশারকান্দি  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "ইলুহার  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "সৈয়দকাঠি  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "উদয়কাঠি  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "বাইশারী  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "বানারীপাড়া  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "সলিয়াবাকপুর  ইউনিয়ন", 'icon': Icons.villa},
    {'title': "চাখার  ইউনিয়ন", 'icon': Icons.villa},
  ];
  int _selectedIndex = 0;

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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "বানারীপাড়ার ইউনিয়নসমূহ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontFamily: 'nameFont',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: gridItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final item = gridItems[index];
                  return GestureDetector(
                    onTap: () {
                      final unionData = unionDataMap[item['title']];
                      if (unionData != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UnionDetailPage(
                              unionData: unionData,
                            ),
                          ),
                        );
                      }
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
        currentIndex: _selectedIndex, // Add this state variable
        onTap: (index) {
          setState(() => _selectedIndex = index);
          // Add navigation logic here
        },
      ),
    );
  }
}