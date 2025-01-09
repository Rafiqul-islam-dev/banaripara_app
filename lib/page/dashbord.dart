import 'package:banaripara/page/about_banaripara.dart';
import 'package:banaripara/page/admin_info.dart';
import 'package:banaripara/page/allpage/bus.dart';
import 'package:banaripara/page/allpage/hospital.dart';
import 'package:banaripara/page/baripara_school_college.dart';
import 'package:banaripara/page/fireservice.dart';
import 'package:banaripara/widgets/app_drawer.dart';
import 'package:banaripara/widgets/carousel_widget.dart';
import 'package:banaripara/widgets/custom_bottom_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:banaripara/page/doctor_page.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  int _selectedIndex = 0;
  final List<String> bannerImages = [
    'https://styrenebd.com/asset/image1.jpg',
    'https://styrenebd.com/asset/image2.jpg',
    'https://styrenebd.com/asset/image.jpg',
  ];

  final List<Map<String, dynamic>> menuItems = [
    {"title": "ডাক্তার", "image": "images/icon/doctor.png", "page": DoctorPage()},
    {"title": "হাসপাতাল", "image": "images/icon/hospital.png", "page": Hospital()},
    {"title": "বাসের সময়সূচি", "image": "images/icon/bus.png", "page": Bus()},
    {"title": "দর্শনীয় স্থান", "image": "images/icon/sightseeing.png", "page": DoctorPage()},
    {"title": "বাসা ভাড়া", "image": "images/icon/house.png", "page": DoctorPage()},
    {"title": "শপিং", "image": "images/icon/online-shopping.png", "page": DoctorPage()},
    {"title": "ফায়ার সার্ভিস", "image": "images/icon/firetruck.png", "page": Fireservice()},
    {"title": "কুরিয়ার সার্ভিস", "image": "images/icon/delivery.png", "page": DoctorPage()},
    {"title": "থানা-পুলিশ", "image": "images/icon/policeman.png", "page": DoctorPage()},
    {"title": "ওয়েবসাইট", "image": "images/icon/world-wide-web.png", "page": DoctorPage()},
    {"title": "বিদ্যুৎ অফিস", "image": "images/icon/idea.png", "page": DoctorPage()},
    {"title": "ডায়াগনস্টিক", "image": "images/icon/monitoring-system.png", "page": DoctorPage()},
    {"title": "রক্ত", "image": "images/icon/blood.png", "page": DoctorPage()},
    {"title": "হোটেল", "image": "images/icon/hotel.png", "page": DoctorPage()},
    {"title": "গাড়ি ভাড়া", "image": "images/icon/vehicle.png", "page": DoctorPage()},
    {"title": "মিস্ত্রি", "image": "images/icon/mechanic.png", "page": DoctorPage()},
    {"title": "জরুরী সেবা", "image": "images/icon/customer-service.png", "page": DoctorPage()},
    {"title": "চাকরি", "image": "images/icon/job.png", "page": DoctorPage()},
    {"title": "উদ্যোক্তা", "image": "images/icon/freelance-work.png", "page": DoctorPage()},
    {"title": "শিক্ষক", "image": "images/icon/teacher.png", "page": DoctorPage()},
    {"title": "পার্লার", "image": "images/icon/makeup-brushes.png", "page": DoctorPage()},
    {"title": "রেস্টুরেন্ট", "image": "images/icon/restaurant.png", "page": DoctorPage()},
    {"title": "ফ্লাট ও জমি", "image": "images/icon/architect.png", "page": DoctorPage()},
    {"title": "ভিডিও দেখুন", "image": "images/icon/youtube.png", "page": DoctorPage()},
    {"title": "পত্রিকা", "image": "images/icon/newspaper.png", "page": DoctorPage()},
    {"title": "শিক্ষা প্রতিষ্ঠান", "image": "images/icon/school.png", "page": BanariparaSchoolCollege()},
    {"title": "নার্সারি", "image": "images/icon/forest.png", "page": DoctorPage()},
  ];

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _logout(BuildContext context) async {
    try {
      await _auth.signOut(); // Signs out the user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Successfully logged out')),
      );
      // Redirect to the login page after logging out
      Navigator.pushReplacementNamed(context, '/login'); // Assuming '/login' is your login page route
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    }
  }

  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "আমাদের বানারীপাড়া",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'nameFont',
          ),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context), // Call the logout method on button press
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 6),
          CustomCarousel(images: bannerImages), // Fixed banner
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutBanaripara(),
                            ),
                          );
                        },
                        child: _buildCard("আমাদের বানারীপাড়া", "images/logoBana.png"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AdminInfo(),
                            ),
                          );
                        },
                        child: _buildCard("এডমিনদের পরিচিতি", "images/admin.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing:9,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => menuItems[index]["page"],
                            ),
                          );
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                menuItems[index]["image"],
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                menuItems[index]["title"],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
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
                ],
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

  Widget _buildCard(String title, String imagePath) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              height: 60, // Adjust as needed
              width: 60,  // Adjust as needed
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'textFont',
              ),
            ),
          ],
        ),
      ),
    );
  }

}

