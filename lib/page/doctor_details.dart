import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorDetails extends StatefulWidget {
  final String category;

  const DoctorDetails({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  // List of predefined categories
  final List<String> categories = [
    'মনোরোগ বিশেষজ্ঞ',
    'ডেন্টিস্ট',
    'পাইলস বিশেষজ্ঞ',
    'চর্ম রোগ বিশেষজ্ঞ',
    'ডায়াবেটিস বিশেষজ্ঞ',
    'নাক, কান ও গলা',
    'চক্ষু বিশেষজ্ঞ',
    'লিভার বিশেষজ্ঞ',
    'ইউরোলজি',
    'সার্জারি',
    'মেডিসিন',
    'রক্তরোগ বিশেষজ্ঞ',
    'গাইনী বিশেষজ্ঞ',
    'কিডনি রোগ বিশেষজ্ঞ',
    'হৃদরোগ বিশেষজ্ঞ',
    'শিশু রোগ বিশেষজ্ঞ',
    'পুষ্টি বিশেষজ্ঞ',
  ];

  // Search filter
  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
    });
  }

  // Build doctor image widget
  Widget _buildDoctorImage(String? imageUrl) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey[200],
      child: ClipOval(
        child: imageUrl == null || imageUrl.isEmpty
            ? Image.asset(
          'images/doctordefult.png',
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        )
            : Image.network(
          imageUrl,
          width: 90,
          height: 90,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              'images/doctordefult.png',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }

  // Submit new doctor data
  Future<void> _submitDoctorData(BuildContext context) async {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController specialtyController = TextEditingController();
    final TextEditingController numberController = TextEditingController();
    final TextEditingController educationController = TextEditingController();
    final TextEditingController chamberController = TextEditingController();
    final TextEditingController detailsController = TextEditingController();
    final TextEditingController imageUrlController = TextEditingController();
    String? selectedCategory;

    await showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Form Fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    // Doctor's Name
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.teal),
                        label: Text('ডাক্তারের নাম'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // Specialty/Category Dropdown
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.medical_services, color: Colors.teal),
                        label: Text('কোন রোগের বিশেষজ্ঞ'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      items: [
                        'মনোরোগ বিশেষজ্ঞ',
                        'ডেন্টিস্ট',
                        'পাইলস বিশেষজ্ঞ',
                        'চর্ম রোগ বিশেষজ্ঞ',
                        'ডায়াবেটিস বিশেষজ্ঞ',
                        'নাক, কান ও গলা',
                        'চক্ষু বিশেষজ্ঞ',
                        'লিভার বিশেষজ্ঞ',
                        'ইউরোলজি',
                        'সার্জারি',
                        'মেডিসিন',
                        'রক্তরোগ বিশেষজ্ঞ',
                        'গাইনী বিশেষজ্ঞ',
                        'কিডনি রোগ বিশেষজ্ঞ',
                        'হৃদরোগ বিশেষজ্ঞ',
                        'শিশু রোগ বিশেষজ্ঞ',
                        'পুষ্টি বিশেষজ্ঞ',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        selectedCategory = value;
                        specialtyController.text = value ?? '';
                      },
                    ),
                    SizedBox(height: 16),

                    // Phone Number
                    TextField(
                      controller: numberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.teal),
                        label: Text('ফোন নাম্বার'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // Education
                    TextField(
                      controller: educationController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.school, color: Colors.teal),
                        label: const Text('ডাক্তারের শিক্ষাগত যোগ্যতা'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Chamber
                    TextField(
                      controller: chamberController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.business, color: Colors.teal),
                        label: const Text('ডাক্তারের বর্তমান কর্মস্থল'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Details TextField
                    TextField(
                      controller: detailsController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.description, color: Colors.teal),
                        label: const Text('যেই যেই রোগের চিকিৎসা করেন'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Photo URL Input
                          Expanded(
                            child: TextField(
                              controller: imageUrlController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.image, color: Colors.teal),
                                label: const Text('ছবির URL'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Submit Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () async {
                        final newDoctor = {
                          'name': nameController.text,
                          'specialty': specialtyController.text,
                          'number': numberController.text,
                          'education': educationController.text,
                          'chamber': chamberController.text,
                          'image': imageUrlController.text,
                          'category': selectedCategory ?? '',
                          'details': detailsController.text,
                          'approval': 0,
                        };

                        // Save to Firebase
                        await FirebaseFirestore.instance
                            .collection('doctors')
                            .add(newDoctor);

                        Navigator.pop(context);
                      },
                      child: const Text(
                        'সংরক্ষণ করুন',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'ডাক্তারের নাম অনুসন্ধান করুন...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: _updateSearchQuery,
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('doctors')
                  .where('category', isEqualTo: widget.category)
                  .where('approval', isEqualTo: 1) // Add approval filter
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text('কোন ডাক্তার পাওয়া যায়নি'));
                }

                final doctors = snapshot.data!.docs
                    .map((doc) => doc.data() as Map<String, dynamic>)
                    .where((doctor) =>
                    (doctor['name'] as String? ?? '')
                        .toLowerCase()
                        .contains(_searchQuery))
                    .toList();

                return ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: _buildDoctorImage(doctor['image']),
                              title: Text(
                                doctor['name'] ?? 'Unknown Doctor',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 4),
                                  Text(
                                      'বিশেষত্বঃ ${doctor['specialty'] ?? ''}'),
                                  Text(
                                      'শিক্ষাগত যোগ্যতাঃ ${doctor['education'] ?? ''}'),
                                  const SizedBox(height: 4),
                                  Text(
                                    doctor['number'] ?? '',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () => _showDoctorDetails(context, doctor),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _submitDoctorData(context),
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDoctorDetails(BuildContext context, Map<String, dynamic> doctor) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  doctor['name'] ?? 'Unknown Doctor',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('বিশেষত্বঃ\n${doctor['specialty'] ?? ''}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Text('শিক্ষাগত যোগ্যতাঃ\n${doctor['education'] ?? ''}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Text('বর্তমান কর্মস্থলঃ\n${doctor['chamber'] ?? ''}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Center(
                    child: Text(
                      doctor['number'] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                        ),
                        onPressed: () {
                          _makePhoneCall(doctor['number'] ?? '');
                        },
                        child: const Text('সিরিয়াল নিন',
                            style: TextStyle(color: Colors.white)),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.teal),
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('বন্ধ করুন',
                            style: TextStyle(color: Colors.teal)),
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

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
