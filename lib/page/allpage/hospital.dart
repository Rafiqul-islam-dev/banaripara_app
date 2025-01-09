import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/app_drawer.dart';

class Hospital extends StatefulWidget {
  const Hospital({super.key});

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String? _userPhone;
  List<Map<String, dynamic>> _hospitals = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getUserPhone();
    _loadApprovedHospitals();
  }

  Future<void> _getUserPhone() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _userPhone = prefs.getString('user_phone');
    });
  }

  Future<void> _loadApprovedHospitals() async {
    setState(() => _isLoading = true);

    try {
      final QuerySnapshot snapshot = await _firestore
          .collection('hospitals')
          .where('approved', isEqualTo: 1)
          .get();

      setState(() {
        _hospitals = snapshot.docs
            .map((doc) => {
          'id': doc.id,
          ...doc.data() as Map<String, dynamic>,
        })
            .toList();
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading hospitals: $e');
      setState(() => _isLoading = false);
    }
  }

  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person, color: Colors.teal),
                          label: const Text('হাসপাতালের নাম'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _numberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.phone, color: Colors.teal),
                          label: const Text('ফোন নাম্বার'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        maxLines: 4,
                        controller: _addressController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.description, color: Colors.teal),
                          label: const Text('হাস্পাতালের পুর্ন ঠিকানা'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () => _handleSubmit(context),
                        child: const Text(
                          'সংরক্ষণ করুন',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _handleSubmit(BuildContext context) async {
    if (_userPhone == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User phone not found')),
      );
      return;
    }

    try {
      await _firestore.collection('hospitals').add({
        'name': _nameController.text,
        'phone': _numberController.text,
        'address': _addressController.text,
        'user_phone': _userPhone,
        'approved': 0,
        'created_at': FieldValue.serverTimestamp(),
      });

      _clearControllers();
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Hospital added successfully')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  void _clearControllers() {
    _nameController.clear();
    _numberController.clear();
    _addressController.clear();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    _addressController.dispose();
    super.dispose();
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'অনুসন্ধান করুন...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _hospitals.isEmpty
                ? _buildEmptyState()
                : _buildHospitalList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog,
        backgroundColor: const Color(0xFF009688),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              Icons.search,
              size: 80,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "কোন ডাটা পাওয়া যায়নি",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHospitalList() {
    return ListView.builder(
      itemCount: _hospitals.length,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemBuilder: (context, index) {
        final hospital = _hospitals[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.withOpacity(0.1),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Hospital Image Container
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/logoBana.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Gradient Overlay
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Hospital Information Section
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8FFF9),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Hospital Name
                        Text(
                          hospital['name'],
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1B5E20),
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Phone Number
                        Row(
                          children: [
                            const Icon(
                              Icons.phone,
                              size: 20,
                              color: Color(0xFF4CAF50),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              hospital['phone'],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color(0xFF2E7D32),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Address
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 20,
                              color: Color(0xFF4CAF50),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                hospital['address'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[800],
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // Action Buttons
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                icon: const Icon(Icons.phone_in_talk),
                                label: const Text('কল করুন'),
                                onPressed: () async {
                                  final url = Uri.parse('tel:${hospital['phone']}');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF4CAF50),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 2,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton.icon(
                                icon: const Icon(Icons.map),
                                label: const Text('ম্যাপে দেখুন'),
                                onPressed: () async {
                                  final searchQuery = Uri.encodeComponent(hospital['address']);
                                  final url = Uri.parse('geo:0,0?q=$searchQuery');

                                  try {
                                    if (!await launchUrl(url)) {
                                      final mapsUrl = Uri.parse(
                                          'https://maps.google.com/?q=$searchQuery');
                                      if (!await launchUrl(mapsUrl,
                                          mode: LaunchMode.externalApplication)) {
                                        throw 'Could not launch maps';
                                      }
                                    }
                                  } catch (e) {
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('মানচিত্র খোলা যায়নি'),
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    }
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF1976D2),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  elevation: 2,
                                ),
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
          ),
        );
      },
    );
  }
}