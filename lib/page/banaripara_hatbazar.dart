import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class BanariparaHatBazar extends StatefulWidget {
  const BanariparaHatBazar({super.key});

  @override
  State<BanariparaHatBazar> createState() => _BanariparaHatBazarState();
}

class _BanariparaHatBazarState extends State<BanariparaHatBazar> {
  final List<String> hatBazarList = [
    'চৌমোহনা হাট',
    'উমারেরপাড় পদ্মবুনিয়া বাজার',
    'জামভিটা তরকারীর হাট',
    'মুরারবাড়ী ত্রিমুখী হাট',
    'ইলুহার জনতার হাট',
    'পবনের বাজার ও নৌকা হাট',
    'আউয়ার হাট',
    'দাসের হাট',
    'সৈয়দকাঠী  নতুন হাট',
    'মালিকান্দা পঞ্চগ্রাম হাট',
    'হক সাহেবের হাট',
    'বড় ভৈৎসর শেরে বাংলা হাট',
    'চাখার হাট',
    'চাখার সংলগ্ন মাদারকাঠী ছাগলের হাট',
    'সলিয়াবাকপুর গো হাট (গুয়াচিত্রা গরুর হাট)',
    'বাংলা বাজার',
    'বাইশারী বাজার',
    'জিয়ার হাট (ধানের বীজের হাট)',
    'কাজলাহার বাজার',
    'গাভা বাজার',
    'উদয়কাঠী হাট',
    'তেতলা শেরে বাংলা হাট',
    'চৌমোহনা হাট',
    'উমারেরপাড় পদ্মবুনিয়া বাজার',
    'জামভিটা তরকারীর হাট',
    'মুরারবাড়ী ত্রিমুখী হাট',
    'ইলুহার জনতার হাট',
    'পবনের বাজার ও নৌকা হাট',
    'আউয়ার হাট',
    'দাসের হাট',
    'সৈয়দকাঠী  নতুন হাট',
    'মালিকান্দা পঞ্চগ্রাম হাট',
    'হক সাহেবের হাট',
    'বড় ভৈৎসর শেরে বাংলা হাট',
    'চাখার হাট',
    'চাখার সংলগ্ন মাদারকাঠী ছাগলের হাট',
    'সলিয়াবাকপুর গো হাট',
    'বাংলা বাজার',
    'বাইশারী বাজার',
    'জিয়ার হাট (ধানের বীজের হাট)',
    'কাজলাহার বাজার',
    'গাভা বাজার',
    'উদয়কাঠী হাট',
    'তেতলা শেরে বাংলা হাট'
  ];

  Future<void> _openInGoogleMaps(String marketName) async {
    final searchQuery = Uri.encodeComponent('$marketName বানারীপাড়া, বরিশাল');
    // Using geo URI scheme
    final url = Uri.parse('geo:0,0?q=$searchQuery');

    try {
      if (!await launchUrl(url)) {
        // If geo scheme fails, try maps URL as fallback
        final mapsUrl = Uri.parse('https://maps.google.com/?q=$searchQuery');
        if (!await launchUrl(mapsUrl, mode: LaunchMode.externalApplication)) {
          throw 'Could not launch maps';
        }
      }
    } catch (e) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('মানচিত্র খুলতে ব্যর্থ হয়েছে'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('ঠিক আছে'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "আমাদের বানারীপাড়া",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      drawer: const AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green.withOpacity(0.1),
              Colors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'বানারীপাড়া উপজেলার হাট বাজার সমূহ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'textFont',
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: hatBazarList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.store,
                            color: Colors.green,
                          ),
                        ),
                        title: Text(
                          hatBazarList[index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'textFont',
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_circle_right_rounded,
                          color: Colors.green,
                          size: 24,
                        ),
                        onTap: () => _openInGoogleMaps(hatBazarList[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}