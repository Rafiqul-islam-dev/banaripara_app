import 'package:flutter/material.dart';
import '../data/union_data.dart';

class UnionDetailPage extends StatelessWidget {
  final UnionData unionData;

  const UnionDetailPage({Key? key, required this.unionData}) : super(key: key);

  Widget _buildInfoSection(String title, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'textFont',
                color: Colors.green,
              ),
            ),
          ),
          const Text(
            ":",
            style: TextStyle(
              fontSize: 22,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
            margin: const EdgeInsets.only(left: 18.0),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'textFont',
                color: Colors.black87,
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }

  Widget _buildListSection(String title, List<String> items) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.green.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.green,
              fontFamily: 'textFont',
            ),
          ),
          const SizedBox(height: 12),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "•",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 22,
                      fontFamily: 'textFont',
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          unionData.name,
          style: const TextStyle(
            fontFamily: 'nameFont',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Hero Image Section
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(unionData.imageAssetPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Section
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Title Section
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1A000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: 'nameFont',
                              ),
                              children: [
                                const TextSpan(text: "ইউনিয়নের তথ্য - "),
                                TextSpan(text: unionData.name),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Details Section
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoSection("জনসংখ্যা", unionData.population),
                          _buildInfoSection("আয়তন", "${unionData.area} বর্গ কিলোমিটার"),
                          _buildInfoSection("লোকসংখ্যা", unionData.familyCount),
                          _buildInfoSection("গ্রামের সংখ্যা", unionData.villageCount),
                          _buildInfoSection("মৌজার সংখ্যা", unionData.moujaCount),
                          _buildInfoSection("হাট/বাজার সংখ্যা", unionData.hatBajarCount),
                          _buildInfoSection("উপজেলা সদর থেকে যোগাযোগ মাধ্যম", unionData.jogajog),
                          _buildInfoSection("শিক্ষার হার", unionData.educationRate),
                          _buildInfoSection("সরকারী প্রাথমিক বিদ্যালয়", unionData.primaryGovtCount),
                          _buildInfoSection("বে-সরকারী রেজিঃ প্রাঃ বিদ্যালয়", unionData.privateGovtCount),
                          _buildInfoSection("উচ্চ বিদ্যালয়", unionData.higherSchool),
                          _buildInfoSection("মাদ্রাসা", unionData.madrasha),
                          _buildListSection("গ্রামসমূহ", unionData.villages),
                          _buildListSection("বাজারসমূহ", unionData.markets),
                          _buildListSection("শিক্ষা প্রতিষ্ঠান", unionData.educationalInstitutions),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}