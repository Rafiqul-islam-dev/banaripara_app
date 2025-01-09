import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../widgets/app_drawer.dart';


class BanariparaMunicipality extends StatefulWidget {
  const BanariparaMunicipality({super.key});

  @override
  State<BanariparaMunicipality> createState() => _BanariparaMunicipalityState();
}

class _BanariparaMunicipalityState extends State<BanariparaMunicipality> {
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
    padding: const EdgeInsets.all(16),
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "পৌরসভার সাংগঠনিক কাঠামো",
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

        const SizedBox(height: 16),
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.black,
                          leading: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        body: PhotoView(
                          imageProvider: const AssetImage('images/organizationalStructure.jpg'),
                          minScale: PhotoViewComputedScale.contained,
                          maxScale: PhotoViewComputedScale.covered * 2,
                          backgroundDecoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    'images/organizationalStructure.jpg',
                    height: 300,
                    width: double.infinity,
                  ),
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "এক নজরে পৌরসভা",
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
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  "আয়তন : ৩৩ বর্গ কিলোমিটার।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "জনসংখ্যা : ১৮১৪৮ (প্রায়)।",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  "পুরুষ : ৯৪০৪ জন।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মহিলা : ৮৪৪৪ জন।",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  "জনসংখ্যার ঘনত্ব : ৬৩০ (প্রতি বর্গ কিলোমিটারে)।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মোট ভোটার সংখ্যা : ৮১১৮।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "পুরুষ ভোটার সংখ্যা : ৪০৪৩।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মহিলা ভোটার সংখ্যা : ৪০৭৫।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "বার্ষিক জনসংখ্যা বৃদ্ধির হার : ১.৮৯%।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মোট পরিবার সংখ্যা : ২৪৮০ টি।",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  "নিকটস্থ এলাকা : বরিশাল-২।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মোট বিদ্যালয় সংখ্যা : ৩২ টি।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মসজিদ : ২০।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "মন্দির : ৭।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "নদ-নদী : হাট-বাজার ২ টি।",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  "ব্যাংক শাখা : ১ টি।",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "ডাক অফিস/সাব পোস্ট অফিস : ১ টি।",
                  style: TextStyle(fontSize: 16),
                ),

              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}
