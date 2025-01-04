import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class BanariParaDetails extends StatefulWidget {
  const BanariParaDetails({super.key});

  @override
  State<BanariParaDetails> createState() => _BanariParaDetailsState();
}

class _BanariParaDetailsState extends State<BanariParaDetails> {
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
                "এক নজরে বানারীপাড়া উপজেলার ঐতিহ্য",
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
          // Image with description card
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    'images/banaripara1.jpg', // Replace with your image path
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'ধান নদী খাল—এই তিনে বরিশাল। বরিশালের উপজেলা বানারীপাড়া, সন্ধ্যা নদীর তীরে। নদীর বুকে শত শত নৌকা ভেসে বেড়ায়। ধান-চাল বিক্রি হয়। নদীর পারে ধান-চালের আড়ত। রাইস মিলও আছে কিছু। সেখানে ধান থেকে চাল হয়। মোল্লা, বেপারী, মৃধা, সরদারদের শোরগোল। প্রায় দুই শ বছর ধরে এখানে হাট বসছে। দূর-দূরান্ত থেকে বেপারীরা আসেন। ধান বিক্রি করে চাল কিনে নিয়ে যান। বিবিসি ট্রাভেল ২০১৭ সালে বাংলাদেশের সাতটি দর্শনীয় স্থানের কথা প্রকাশ করে। এই ভাসমান হাটটি তার অন্যতম।',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontFamily: 'textFont',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Second card (optional for another image or text)
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    'images/banaripara2.jpg', // Replace with another image if needed
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'ধান থেকে চাল—মাঝখানে অনেকগুলো ধাপ পেরোতে হয়। এই কাজটি যাঁরা করেন, তাঁদের বলে কুটিয়াল। কুটিয়ালরা ধান কিনে নৌকায় ভিজিয়ে রাখেন। ভোর রাতে তাফালে (বড় চুলা) দিয়ে ডোঙায় (সিদ্ধ করার পাত্র) সিদ্ধ করে পরের দুই থেকে তিন দিন রোদে শুকান। তারপর রাইস মিলে নিয়ে ভাঙালে সুন্দর ঝরঝরে চাল বের হয়। কিছুদিন আগে পর্যন্ত প্রায় পঁচিশ হাজার কুটিয়াল ছিল এই উপজেলায়। নদীভাঙন, ব্যবসায় মন্দা, আধুনিক মেশিন ইত্যাদি কারণে এই পেশায় লোকসংখ্যা কমে গেছে। এখানে চাল তৈরি হয় সম্পূর্ণ দেশীয় পদ্ধতিতে। চালে রং দেওয়া, পলিশ করে সুন্দর করা ইত্যাদি ব্যাপার এখানে নেই। বরগুনা, পটুয়াখালী, ভোলা, পিরোজপুরসহ বিভিন্ন জেলার ব্যবসায়ীরা এখানে ধান বিক্রি করতে আসেন। পরে তাঁরাই চাল কিনে নিয়ে বাড়ি ফেরেন।',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontFamily: 'textFont',
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
