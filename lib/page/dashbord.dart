import 'package:banaripara/page/about_banaripara.dart';
import 'package:banaripara/page/admin_info.dart';
import 'package:banaripara/widgets/app_drawer.dart';
import 'package:banaripara/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:banaripara/page/doctor_page.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  final List<String> bannerImages = [
    'https://i.ibb.co/X2fc1Nj/267525004-1340441659706313-8678375803736625064-n.jpg',
    'https://i.ibb.co/HXnmBGm/461178613-3371822983120999-5428225248020846696-n.jpg'
  ];

  final List<Map<String, dynamic>> menuItems = [
    {"title": "ডাক্তার", "image": "images/icon/doctor.png", "page": DoctorPage()},
    {"title": "হাসপাতাল", "image": "images/icon/hospital.png", "page": DoctorPage()},
    {"title": "বাসের সময়সূচি", "image": "images/icon/bus.png", "page": DoctorPage()},
    {"title": "দর্শনীয় স্থান", "image": "images/icon/sightseeing.png", "page": DoctorPage()},
    {"title": "বাসা ভাড়া", "image": "images/icon/house.png", "page": DoctorPage()},
    {"title": "শপিং", "image": "images/icon/online-shopping.png", "page": DoctorPage()},
    {"title": "ফায়ার সার্ভিস", "image": "images/icon/firetruck.png", "page": DoctorPage()},
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
    {"title": "শিক্ষা প্রতিষ্ঠান", "image": "images/icon/school.png", "page": DoctorPage()},
    {"title": "নার্সারি", "image": "images/icon/forest.png", "page": DoctorPage()},
  ];

  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "আমাদের বানারীপাড়",
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
                        child: _buildCard("এডমিনদের পরিচিতি", "images/logoBana.png"),
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
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
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
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                menuItems[index]["image"],
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                menuItems[index]["title"],
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
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "হোম",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "যোগাযোগ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "নোটিফিকেশন",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "প্রোফাইল",
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildCard(String title, String imagePath) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              height: 70, // Adjust as needed
              width: 70,  // Adjust as needed
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

