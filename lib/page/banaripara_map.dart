import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import '../widgets/app_drawer.dart';

class BanariparaMap extends StatefulWidget {
  const BanariparaMap({super.key});

  @override
  State<BanariparaMap> createState() => _BanariparaMapState();
}

class _BanariparaMapState extends State<BanariparaMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("আমাদের বানারীপাড়া"),
        backgroundColor: Colors.green,
      ),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "ম্যাপে বানারীপাড়া উপজেলার",
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
                            imageProvider: const AssetImage('images/banariparamap.png'),
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
                      'images/banariparamap.png',
                      height: 400,
                      width: double.infinity,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}