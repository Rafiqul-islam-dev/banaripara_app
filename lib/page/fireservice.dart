import 'package:banaripara/data/fireservice_data.dart';
import 'package:banaripara/page/dashbord.dart';
import 'package:banaripara/widgets/app_drawer.dart';
import 'package:banaripara/widgets/carousel_widget.dart';
import 'package:banaripara/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Fireservice extends StatefulWidget {
  const Fireservice({super.key});

  @override
  State<Fireservice> createState() => _FireserviceState();
}

class _FireserviceState extends State<Fireservice> {
  final List<String> bannerImages = [
    'https://styrenebd.com/asset/image1.jpg',
    'https://styrenebd.com/asset/image2.jpg',
    'https://styrenebd.com/asset/image.jpg',
  ];

  int _selectedIndex = 0;

  void _onBottomNavTap(int index) {
    setState(() => _selectedIndex = index);
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashbord()),
      );
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  Future<void> _openMap(String mapUrl) async {
    final Uri url = Uri.parse(mapUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }


  Widget _buildImage(String? imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: imageUrl != null
          ? Image.network(
        imageUrl,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            'images/banariparaFireservice.jpg',
            width: 120,
            height: 140,
            fit: BoxFit.cover,
          );
        },
      )
          : Image.asset(
        'images/banariparaFireservice.jpg',
        width: 120,
        height: 140,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFireServiceCard(FireService service) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFE7EFE9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            _buildImage(service.imageUrl),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    service.location,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    service.phone,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => _makePhoneCall(service.phone),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('কল করুন'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => _openMap(service.mapUrl),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8B5CF6),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('ম্যাপে দেখুন'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
      body: ListView(
        children: [
          const SizedBox(height: 8),
          CustomCarousel(images: bannerImages),
          const SizedBox(height: 20),
          ...fireServiceList.map((service) => _buildFireServiceCard(service)).toList(),
          const SizedBox(height: 16),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomNavTap,
      ),
    );
  }
}