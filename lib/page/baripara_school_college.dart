import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class BanariparaSchoolCollege extends StatefulWidget {
  const BanariparaSchoolCollege({super.key});

  @override
  State<BanariparaSchoolCollege> createState() => _BanariparaSchoolCollegeState();
}

class _BanariparaSchoolCollegeState extends State<BanariparaSchoolCollege> {
  final List<Map<String, String>> schoolData = [
    { 'no': '০১', 'name': 'চৌয়ারীোপাড়া হাসিনা মোঃ বাঃ মাধ্যঃ বিদ্যালয়়', 'eiin': '১০০৬০৪', 'principal': 'সাবিনা বেগম', 'mobile': '০১৭৩৪৩৬৫৮৮৮', 'location': 'সলিয়াবাকপুর' },
    { 'no': '০২', 'name': 'মলুহার ওয়াজেদিয়া মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬১৫', 'principal': 'মোঃ লেসি মিয়া', 'mobile': '০১৯২৩০৬৮৪৬১', 'location': 'ইন্দুরকানী' },
    { 'no': '০৩', 'name': 'চাঊলাকাঠি (জাং) এ রব মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩৯', 'principal': 'মোঃ আব্দুল হোসেন', 'mobile': '০১৭৬৩৩২১৪৪৪', 'location': 'চাখার' },
    { 'no': '০৪', 'name': 'আজিজুল হক মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩০', 'principal': 'মোঃ ইসমাইল হোসেন', 'mobile': '০১৭১৫২৯৮৭০৫', 'location': 'উদাকাঠী' },
    { 'no': '০৫', 'name': 'ইউনিয়ন প্রগতি মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩২', 'principal': 'মোঃ ইয়ার আলী', 'mobile': '০১৮৩৮৭৭৭৮৭৭', 'location': 'ইন্দুরকানী' },
    { 'no': '০৬', 'name': 'পূঃ মলুহার জিসিমঊদ্দিন মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩৩', 'principal': 'মোঃ সুলতান মাহমুদ', 'mobile': '০১৭১৫০৫৫৮১৮', 'location': 'সলিয়াবাকপুর' },
    { 'no': '০৭', 'name': 'চাঊলাকাঠি ইসমাইলিয়া ফাজিল মাদরাসা', 'eiin': '১০০৬৩৪', 'principal': 'মোঃ আব্দুল হক', 'mobile': '০১৭২৩৩০৫৬০০', 'location': 'চাখার' },
    { 'no': '০৮', 'name': 'উত্তরকুল মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩১', 'principal': 'মোঃ জাকির হোসেন', 'mobile': '০১৭১৫০০৯৩৮৩', 'location': 'বাইশারী' },
    { 'no': '০৯', 'name': 'আঊয়ার ইসলামিয়া দাখিল মাদরাসা', 'eiin': '১০০৬৩৩', 'principal': 'মোঃ আজিজুল হক', 'mobile': '০১৭২৩৩০৫৬০০', 'location': 'সৈয়দকাঠী' },
    { 'no': '১০', 'name': 'দক্ষিণ নাজিরপুর মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩৭', 'principal': 'মোঃ মজিবুর রহমান', 'mobile': '০১৮২৩৫০৮৮৪৪', 'location': 'বিশারকাঠী' },
    { 'no': '১১', 'name': 'দড়িকর ঈদগাহ মহিলা আলিম মাদরাসা', 'eiin': '১০০৬৩৬', 'principal': 'মোঃ দেলোয়ার হোসেন', 'mobile': '০১৭২৪৩৬৮৮৪৪', 'location': 'সলিয়াবাকপুর' },
    { 'no': '১২', 'name': 'আহম্মদাবাদ হোসাঃ আলিম মাদরাসা', 'eiin': '১০০৬৩৮', 'principal': 'মোঃ লতিফুর রহমান', 'mobile': '০১৮১২৫৫৫৬৭৭', 'location': 'সলিয়াবাকপুর' },
    { 'no': '১৩', 'name': 'মসজিদবাড়ি মাধ্যমিক বিদ্যালয় ও কলেজ', 'eiin': '১০০৬৪০', 'principal': 'নজরুল ইসলাম ফিরোজ', 'mobile': '০১৭৩২৭০৭৮৭৭', 'location': 'বিশারকাঠী' },
    { 'no': '১৪', 'name': 'মলুহার ইসলামিয়া ফাজিল মাদরাসা', 'eiin': '১০০৬৩৪', 'principal': 'মোঃ সুলতান হোসেন', 'mobile': '০১৭১৫০৯৯৫৫০', 'location': 'উদাকাঠী' },
    { 'no': '১৫', 'name': 'পূর্ব মধ্য উমারের পাড় দাখিল মাদরাসা', 'eiin': '১০০৬২০', 'principal': 'মোঃ আব্দুর রহমান', 'mobile': '০১৭১৬০৮৮৪৪৪', 'location': 'বিশারকাঠী' },
    { 'no': '১৬', 'name': 'খলিশাকোট হাই স্কুল', 'eiin': '১০০৬২২', 'principal': 'মাওলানা গোলাম মোস্তফা', 'mobile': '০১৭১২৫৫৭৭৯৯', 'location': 'চাখার' },
    { 'no': '১৭', 'name': 'সাতবাড়িয়া কারামতিয়া বালিকা দাখিল মাদরাসা', 'eiin': '১০০৬৩০', 'principal': 'মোঃ মিজানুর রহমান', 'mobile': '০১৭২২৩০০০১১', 'location': 'চাখার' },
    { 'no': '১৮', 'name': 'সোনাহার এ এইচ দাখিল মাদরসা', 'eiin': '১০০৬১৫', 'principal': 'মোঃ দেলোয়ার হোসেন', 'mobile': '০১৮১৫০৬৫৫০০', 'location': 'উদাকাঠী' },
    { 'no': '১৯', 'name': 'ওয়াজেদ মেমোরিয়াল উচ্চ বালিকা বিদ্যালয়', 'eiin': '১০০৬২৬', 'principal': 'মোঃ শাহরিয়ার সজল', 'mobile': '০১৭১২৩৩২২৭৮', 'location': 'উদাকাঠী' },
    { 'no': '২০', 'name': 'গাভা হাই স্কুল', 'eiin': '১০০৬৩৮', 'principal': 'মোঃ শামিম আহমেদ', 'mobile': '০১৭১২৪৮৮৩৮৮', 'location': 'সৈয়দকাঠী' },
    { 'no': '২১', 'name': 'উঃ মরিচবুনিয়া বিশাঃ নেছাঃ দাখিল মাদরাসা ', 'eiin': '১০০৬৪২', 'principal': 'মোঃ মনিরুজ্জামান', 'mobile': '০১৮১২০৩৯২৮৩', 'location': 'বিশারকাঠী' },
    { 'no': '২২', 'name': 'চৌমোহনা আদর্শ মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৪৩', 'principal': 'মোঃ গোলাম মাহমুদ', 'mobile': '০১৭১৫০০৯৩৮৩', 'location': 'সৈয়দকাঠী' },
    { 'no': '৩৪', 'name': 'বানারীপাড়া বালিকা মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬০৩', 'principal': 'মোঃ আব্দুর দরিক', 'mobile': '০১৭১৪৩৬৫০৬৪', 'location': 'পৌরসভা' },
    { 'no': '৩৫', 'name': 'বাইশারী মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬২১', 'principal': 'মোঃ ফখরুল আলম', 'mobile': '০১৭২৫০৯৯৫৫০', 'location': 'বাইশারী' },
    { 'no': '৩৬', 'name': 'কচুয়া নেছারিয়া ফাজিল মাদরাসা', 'eiin': '১০০৬৩০', 'principal': 'মাওলানা মোঃ আসাদুজ্জামান', 'mobile': '০১৭২২৯৬০৫৮৪', 'location': 'সৈয়দকাঠী' },
    { 'no': '৩৭', 'name': 'সৈয়দকাঠী দাখিল আলিম মাদরাসা', 'eiin': '১০০৬২৪', 'principal': 'শ্রদ্ধেয় গোলাম রসুল', 'mobile': '০১৭১৫৩৬৩৫৭৫', 'location': 'সৈয়দকাঠী' },
    { 'no': '৩৮', 'name': 'আটিয়ার বিল মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩২', 'principal': 'মোঃ মিজানুর রহমান', 'mobile': '০১৮১৬৩৮৮৩৮৯', 'location': 'পৌরসভা' },
    { 'no': '৩৯', 'name': 'চাখার দরবার জুলফিকারুল উলামা মাদরাসা', 'eiin': '১০০৬১০', 'principal': 'মাওলানা ছিরাজুল ইসলাম', 'mobile': '০১৭২২৫৪৪৭১১', 'location': 'চাখার' },
    { 'no': '৪০', 'name': 'চাখার দরবার কাদেরিয়া মাদরাসা', 'eiin': '১০০৬১৩', 'principal': 'মাওলানা আশরাফ আলী', 'mobile': '০১৭২৯৩৮৪৪৯৮', 'location': 'চাখার' },
    { 'no': '৪১', 'name': 'জয়েদেবপুর মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬১২', 'principal': 'মোঃ মনিরুজ্জামান', 'mobile': '০১৭১৮০৪৮৪৩৪', 'location': 'বানারীপাড়া' },
    { 'no': '৪২', 'name': 'শেখ ই-বাংলা নিম্ন মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬২৩', 'principal': 'মোঃ এ জিয়াউল হক', 'mobile': '০১৭৪৫৯৯৪০৩৬', 'location': 'চাখার' },
    { 'no': '৪৩', 'name': 'এন,এ,লতিফ মহাফুজ আলিম মাদরাসা', 'eiin': '১০০৬৩৮', 'principal': 'মোঃ মহিউদ্দিন হাসান', 'mobile': '০১৭১৫২০২৪৫১', 'location': 'পৌরসভা' },
    { 'no': '৪৪', 'name': 'বানারীপাড়া মাহফুজ আলিম মাদরাসা', 'eiin': '১০০৬৩৩', 'principal': 'মোঃ শামীম হোসেন', 'mobile': '০১৮১৬০৬৩৮৯৮', 'location': 'পৌরসভা' },
    { 'no': '৪৫', 'name': 'বি,বি,এস,জি, মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬৩৬', 'principal': 'মোঃ সালাম হায়দার', 'mobile': '০১৮১২৫০০০৫৭', 'location': 'চাখার' },
    { 'no': '৪৬', 'name': 'ভর্তি এস,জি বালিকা মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬২০', 'principal': 'মোঃ দেলোয়ার হোসেন', 'mobile': '০১৭২৪৩২৪৮৭২', 'location': 'বাইশারী' },
    { 'no': '৪৭', 'name': 'হানুফা খাতুন মহিলা আলিম মাদরাসা', 'eiin': '১০০৬২২', 'principal': 'মোঃ রিয়াজুল ইসলাম', 'mobile': '০১৭১৫০৬৩৮৫৮', 'location': 'বাইশারী' },
    { 'no': '৪৮', 'name': 'মাঝিয়ারহাট বালিকা দাখিল মাদরাসা', 'eiin': '১০০৬২৬', 'principal': 'মাওলানা গোলাম সারোয়ার', 'mobile': '০১৮১৬৪০৭৭৫৬', 'location': 'সৈয়দকাঠী' },
    { 'no': '৪৯', 'name': 'রামনারায়ণ মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬১১', 'principal': 'মোঃ রিয়াজ আহমেদ', 'mobile': '০১৭১৭২৩৯২৬৭', 'location': 'বিশারকাঠী' },
    { 'no': '৫০', 'name': 'ব্রাহ্মণকাঠী বালিকা নিম্ন মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬২৭', 'principal': 'মোঃ হাবিবুর রহমান', 'mobile': '০১৭১৫০৫২০৫৮', 'location': 'সৈয়দকাঠী' },
    { 'no': '৫১', 'name': 'বাড়িয়াখালী ইউনিয়ন ইনস্টিটিউট', 'eiin': '১০০৬৩০', 'principal': 'মোঃ কাইয়ুম আলম', 'mobile': '০১৯৪৪৪৮৩৪৮৫', 'location': 'পৌরসভা' },
    { 'no': '৫২', 'name': 'চাখার ফজলুল হক ইনস্টিটিউশন', 'eiin': '১০০৬৩৫', 'principal': 'আফতাব উদ্দিন চৌধুরী', 'mobile': '০১৭২২২২২৮০৫', 'location': 'চাখার' },
    { 'no': '৫৩', 'name': 'চাখার রাজ্জাক ইসলাম টিচার্স ট্রেনিং কলেজ', 'eiin': '১৩০৪৫৭', 'principal': 'মোঃ মিজানুর রহমান', 'mobile': '০১৭১৫০০০১৩৭', 'location': 'চাখার' },
    { 'no': '৫৪', 'name': 'সৈয়দকাঠী আলিম মাদরাসা', 'eiin': '১০০৬৩৭', 'principal': 'মাওলানা রুহুল আমিন', 'mobile': '০১৭২২০৫৫৫৭০', 'location': 'সৈয়দকাঠী' },
    { 'no': '৫৫', 'name': 'চাখার ফজলুল হক কলেজ', 'eiin': '১০০৬৩৯', 'principal': 'শাহরিয়ার হক সজল', 'mobile': '০১৭১৫৩৩৩২৭৮', 'location': 'চাখার' },
    { 'no': '৫৬', 'name': 'বিশারকাঠী মাধ্যমিক বিদ্যালয়', 'eiin': '১০০৬১৩', 'principal': 'মোঃ গোলাম মোস্তফা', 'mobile': '০১৭১৫০০০০৪৬', 'location': 'বিশারকাঠী' },
    { 'no': '৫৭', 'name': 'মতিলাল উজ্জ্বল হাসান পাটোয়ারী কলেজ', 'eiin': '১০০৬১৫', 'principal': 'মোঃ জাকির হোসেন', 'mobile': '০১৮১৯০৬০৬০৬', 'location': 'টেনুগোপাল' }
  ];

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'শিক্ষা প্রতিষ্ঠান তালিকা',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'textFont',
                    ),
                  ),
                ),
                DataTable(
                  headingRowColor: MaterialStateProperty.all(Colors.green.shade100),
                  dataRowColor: MaterialStateProperty.all(Colors.white),
                  border: TableBorder.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  columns: const [
                    DataColumn(
                      label: Text(
                        'নং',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 18),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'শিক্ষা প্রতিষ্ঠানের নাম',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 18),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'EIIN',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 18),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'প্রতিষ্ঠান প্রধানের নাম',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 18),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'মোবাইল নম্বর',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 18),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'ইউনিয়ন/পৌর',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 18),
                      ),
                    ),
                  ],
                  rows: schoolData.map((data) {
                    return DataRow(
                      cells: [
                        DataCell(Text(data['no']!,  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 16))),
                        DataCell(Text(data['name']!, style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 16),)),
                        DataCell(Text(data['eiin']!, style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 16),)),
                        DataCell(Text(data['principal']!,  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 16),)),
                        DataCell(Text(data['mobile']!,  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 16),)),
                        DataCell(Text(data['location']!,  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'textFont',fontSize: 16),)),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}