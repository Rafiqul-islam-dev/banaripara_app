import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class BanariparaFreedomFighter extends StatefulWidget {
  const BanariparaFreedomFighter({super.key});

  @override
  State<BanariparaFreedomFighter> createState() => _BanariparaFreedomFighterState();
}

class _BanariparaFreedomFighterState extends State<BanariparaFreedomFighter> {
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
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "৭১’র মুক্তিযুদ্ধে বানারীপাড়ার  সংক্ষিপ্ত ইতিহাসয",
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                '২৬ এপ্রিল পাকিস্তানি সেনাদের হাতে বরিশালের পতন হলে স্থানীয় প্রতিরোধ যোদ্ধারা কুড়িয়ানায় সমবেত হন। সেখানে মুক্তিযোদ্ধাদের প্রশিক্ষণ দেওয়া হতো। কুড়িয়ানার পর গাভাতে মুক্তিবাহিনীর ক্যাম্প গড়ে ওঠে। এই অঞ্চলের মুক্তিযোদ্ধাদের নেতৃত্ব দিয়েছেন ক্যাপ্টেন শাহজাহান ওমর, বেণীলাল দাসগুপ্তসহ আরও কয়েকজন। মুক্তিযুদ্ধের সময় এই উপজেলার গাভায় ব্যাপক গণহত্যা, অগ্নিসংযোগ, লুটপাট ও নির্যাতন পরিচালিত হয়। এ উপজেলার গাভা গ্রামে পাকবাহিনী প্রায় ২১২ জনকে হত্যা করে। বিশেষ করে দক্ষিণ গাভা নরের কাঠী বধ্যভূমিতে হত্যা করা হয় শতাধিক ব্যক্তিকে।',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontFamily: 'textFont',
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                '১৯৭১ সালে মুক্তিযুদ্ধ চলাকালে বরিশাল জেলার বানারীপাড়া উপজেলায় মুক্তিযোদ্ধারা পাকিস্তানিদের অবস্থানে কয়েকবার আক্রমণ করেন। বানারীপাড়ায় মুক্তিযোদ্ধারা সর্বশেষ আক্রমণ করেন নভেম্বরের শেষে। বানারীপাড়ার অবস্থান বরিশাল জেলার পশ্চিম প্রান্তে, পিরোজপুর জেলার সীমান্তে। বানারীপাড়ার সন্ধ্যা নদীর পূর্ব পাড়ে ১৯৭১ সালে পাকিস্তানি সেনাদের অবস্থান ছিল, আর থানায় ছিল মূলত রাজাকার ও পুলিশ। প্রায় এক কোম্পানি রাজাকার সেখানে ছিল। সর্বশেষ আক্রমণে মুক্তিযোদ্ধাদের কয়েকটি দল সম্মিলিতভাবে বানারীপাড়ার পাকিস্তানি অবস্থানে এবং থানায় একযোগে আক্রমণ করে।  এখানে কয়েক ঘণ্টা যুদ্ধ চলে। তুমুল যুদ্ধের পর সেদিন বানারীপাড়া মুক্ত হয়। কয়েকজন রাজাকার ও থানার পুলিশ আত্মসমর্পণ করে। বাকি রাজাকাররা পালিয়ে যায়। সন্ধ্যা নদীর পূর্ব পাড়ে অবস্থানরত পাকিস্তানি সেনারাও সেদিন পালিয়ে যায়।',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontFamily: 'textFont',
                ),
              ),
            ),
          ],
        ),
      ],

    ),
    );
  }
}
