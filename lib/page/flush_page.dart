
import 'package:flutter/material.dart';

class FlushPage extends StatelessWidget {
  const FlushPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xffE9EAF7),
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.55,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Color(0xFF263238),
                ),
                child: Center(
                  child: Image.asset(
                    "images/logoBana.png",
                    height: 320,
                    width: 320,
                    errorBuilder: (context, error, stackTrace) {
                      return Text(
                        'Image not found',
                        style: TextStyle(color: Colors.red),
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.6,
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "আমাদের বানারীপাড়া Our Banaripara",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.black,
                        fontFamily: 'nameFont',
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      " বানারীপাড়ার প্রকৃতি, পরিবেশ,ইতিহাস,ঐতিহ্য, সংস্কৃতি পাশা-পাশি শিক্ষা, জ্ঞান-বিজ্ঞান প্রসার ও পরিচ্ছন্ন বিনোদনের জন্য একটা সুন্দর পরিবেশ তৈরী করা",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'textFont',
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightGreen,
                          border: Border.all(
                            color: Colors.lightGreen,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(0, -1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Container(
                                height: size.height * 0.08,
                                width: size.width / 2.2,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

