import 'package:banaripara/data/doctor_data.dart';
import 'package:banaripara/page/dashbord.dart';
import 'package:banaripara/page/doctor_details.dart';
import 'package:banaripara/widgets/app_drawer.dart';
import 'package:banaripara/widgets/carousel_widget.dart';
import 'package:banaripara/widgets/custom_bottom_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  final List<String> bannerImages = [
    'https://styrenebd.com/asset/image1.jpg',
    'https://styrenebd.com/asset/image2.jpg',
    'https://styrenebd.com/asset/image.jpg',
  ];

  final List<Map<String, String>> specialties = [
    {'icon': 'images/icon/mental-health.png', 'title': 'মনোরোগ বিশেষজ্ঞ'},
    {'icon': 'images/icon/heart-rate.png', 'title': 'হৃদরোগ বিশেষজ্ঞ'},
    {'icon': 'images/icon/doctorpilies.png', 'title': 'পাইলস বিশেষজ্ঞ'},
    {'icon': 'images/icon/dentist.png', 'title': 'ডেন্টিস্ট'},
    {'icon': 'images/icon/healthy.png', 'title': 'চর্ম রোগ বিশেষজ্ঞ'},
    {'icon': 'images/icon/doctor-dibities.png', 'title': 'ডায়াবেটিস বিশেষজ্ঞ'},
    {'icon': 'images/icon/medical.png', 'title': 'নাক, কান ও গলা'},
    {'icon': 'images/icon/optometrist.png', 'title': 'চক্ষু বিশেষজ্ঞ'},
    {'icon': 'images/icon/hepatologist.png', 'title': 'লিভার বিশেষজ্ঞ'},
    {'icon': 'images/icon/urology.png', 'title': 'ইউরোলজি'},
    {'icon': 'images/icon/surgeon.png', 'title': 'সার্জারি'},
    {'icon': 'images/icon/maternity-care.png', 'title': 'গাইনী বিশেষজ্ঞ'},
    {'icon': 'images/icon/doctorblood.png', 'title': 'রক্তরোগ বিশেষজ্ঞ'},
    {'icon': 'images/icon/drugs.png', 'title': 'মেডিসিন'},
    {'icon': 'images/icon/kidney.png', 'title': 'কিডনি রোগ বিশেষজ্ঞ'},
    {'icon': 'images/icon/nutrition-plan.png', 'title': 'পুষ্টি বিশেষজ্ঞ'},
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

  int _selectedIndex = 0; // Move this to the class level for state management

  void _onBottomNavTap(int index) {
    setState(() => _selectedIndex = index);
    if (index == 0) {
      // Navigate to Dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Dashbord()),
      );
    }
    // Add logic for other tabs if needed
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
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context), // Call the logout method on button press
          ),
        ],
      ),

      drawer: const AppDrawer(), // Adding the AppDrawer
      body: Column(
        children: [
          const SizedBox(height: 8),
          CustomCarousel(images: bannerImages),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "এক নজরে দেখে নিন কোন রোগ হলে কোন ডাক্তারের কাছে যাবেন",
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
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemCount: specialties.length,
              itemBuilder: (context, index) {
                final item = specialties[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctorDetails(
                          category: item['title']!,

                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          item['icon']!,
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          item['title']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 14,fontFamily: 'textFont',fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                );
              },
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
