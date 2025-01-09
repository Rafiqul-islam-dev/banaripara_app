import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class BanariParaDetails extends StatefulWidget {
  const BanariParaDetails({super.key});

  @override
  State<BanariParaDetails> createState() => _BanariParaDetailsState();
}
class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ExpansionTile(
        title: const Text(
          'বানারীপাড়ার পরিসংখ্যান',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontFamily: 'textFont',
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildStatRow('জেলা সদর হতে দূরত্ব', '২৭ কি:মি:'),
                _buildStatRow('আয়তন', '১০৪/৮৬ বর্গ কিলোমিটার'),
                _buildStatRow('জনসংখ্যা', '১,৩০,৪৯৮ জন (প্রায়)'),
                _buildPopulationStats(),
                _buildStatRow('লোক সংখ্যার ঘনত্ব', '১৮৮৯ (প্রতি বর্গ কিলোমিটারে)'),
                _buildStatRow('মোট ভোটার সংখ্যা', '৯০৪৬১ জন'),
                _buildVoterStats(),
                _buildStatRow('সাক্ষরতা হার', '৭০.৬১%'),
                _buildInfrastructureStats(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'textFont',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'textFont',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopulationStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'জনসংখ্যা:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'textFont',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              _buildStatRow('পুরুষ', '৮১২৫৫ জন (প্রায়)'),
              _buildStatRow('মহিলা', '৭৯২৭৫ জন (প্রায়)'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVoterStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'ভোটার:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'textFont',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              _buildStatRow('পুরুষ ভোটার', '৪৬১১৩ জন'),
              _buildStatRow('মহিলা ভোটার', '৪৭২৪৬ জন'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfrastructureStats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'পরিকাঠামো:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'textFont',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              _buildStatRow('ইউনিয়ন', '৮ টি'),
              _buildStatRow('পৌরসভা', '১ টি'),
              _buildStatRow('গ্রাম', '৭৯ টি'),
              _buildStatRow('মৌজা', '৭৯ টি'),
              _buildStatRow('হাট-বাজার', '২৩ টি'),
              _buildStatRow('ব্যাংক শাখা', '১০ টি'),
              _buildStatRow('পোস্ট অফিস/সাব', '১৫ টি'),
              _buildStatRow('টেলিফোন এক্সচেঞ্জ', '১ টি'),
              _buildStatRow('ক্ষুদ্র কুটির শিল্প', '১০৬ টি'),
            ],
          ),
        ),
      ],
    );
  }
}


class _BanariParaDetailsState extends State<BanariParaDetails> {
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
        padding: const EdgeInsets.all(10),

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
          StatsSection(),
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
