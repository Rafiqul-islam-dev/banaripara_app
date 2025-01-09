import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Person {
  final String name;
  final String description;
  final String duration;

  Person({
    required this.name,
    required this.description,
    required this.duration,
  });
}

class BanariparaImportantPerson extends StatefulWidget {
  const BanariparaImportantPerson({super.key});

  @override
  State<BanariparaImportantPerson> createState() => _BanariparaImportantPersonState();
}

class _BanariparaImportantPersonState extends State<BanariparaImportantPerson> {
  final List<Person> persons = [
    Person(
      name: 'শের-এ-বাংলা এ. কে. ফজলুক হক',
      duration: '(অক্টোবর ২৬, ১৮৭৩ - এপ্রিল ২৭, ১৯৬২)',
      description: 'এ. কে. ফজলুক হক ১৮৭৩ সালে ২৬ অক্টোবর বরিশাল জেলার রাজাপুর থানার সাতুরিয়া গ্রামে মামার বাড়িতে জন্মগ্রহণ করেন। তিনি কাজী মুহম্মদ ওয়াজেদ এবং সাইদুন্নেসা খাতুনের একমাত্র পুত্র ছিলেন। বাঙালি রাজনীতিবিদ। বিংশ শতাব্দীর প্রথমার্ধে বাঙালি কূটনীতিক হিসেবে বেশ পরিচিত ছিলেন। রাজনৈতিক মহল এবং সাধারণ মানুষের নিকট শের-এ-বাংলা এবং হক সাহেব নামে পরিচিত। তিনি রাজনৈতিক অনেক পদে অধিস্তান করেছেন তার মধ্যে কলকাতার মেয়র (১৯৩৫), অবিভক্ত বাংলার প্রধানমন্ত্রী (১৯৩৭ - ১৯৪৩), পূর্ব পাকিস্তানের প্রধানমন্ত্রী (১৯৫৪), পাকিস্তানের স্বরাষ্ট্র মন্ত্রী (১৯৫৫), পূর্ব পাকিস্তানের গভর্নর (১৯৫৬ - ১৯৫৮) অন্যতম। যুক্তফ্রন্ট গঠনে প্রধান নেতাদের মধ্যে তিনি অন্যতম।',
    ),

    Person(
      name: 'গোলাম সারওয়ার',
      duration: '(১ এপ্রিল ১৯৮০ - ১৩ মার্চ ২০১৮)',
      description: 'একজন স্বনামধন্য বাংলাদেশী সাংবাদিক ও কলাম লেখক। তাঁর সাংবাদিকতার জীবন শুরু হয় ১৯৬৩ সালে দৈনিক পয়গম দিয়ে। এরপর তিনি যুক্ত ছিলেন দৈনিক সংবাদ, দৈনিক ইত্তেফাক, দৈনিক যুগান্তর, দৈনিক সমকাল এর মত শীর্ষস্থানীয় দৈনিকে। তিনি ১৯৭১ সালে বাংলাদেশের স্বাধীনতা যুদ্ধে সক্রিয়ভাবে অংশগ্রহণ করেন।',
    ),
    Person(
      name: 'শহীদ বুদ্ধিজীবী সুখরঞ্জন সমদ্দার',
      duration: '',
      description: 'জন্ম :ইলুহার গ্রাম ,বরিশাল  স্থানীয় বাইশারী স্কুল থেকে ১৯৫২ সালে মেট্রিকুলেসন। বরিশাল বি ,এম কলেজ থেকে আই ,এ পাস করেন। কলকাতা বিশ্ববিদ্যালয় থেকে ১৯৫৮ সালে সংস্কৃতে (অনার্স ) পরে ঢাকা বিশ্ববিদ্যালয় থেকে সংস্কৃতে এম,এ ডিগ্রী লাভ করেন ১৯৭১ এর ১৪ ই এপ্রিল বিশ্ববিদ্যালয়ের কুয়াটার থেকে পাকিস্তানি ফোর্সেস সদস্যরা  তাকে ধরে নিয়ে যায়। তিনি আর ফিরে আসেন নি',
    ),
    Person(
      name: 'মনোরঞ্জন গুহঠাকুরতা',
      duration: '(১৮৫৮ - ৩ মে ১৯১৯)',
      description: 'খ্যাতনামা জননেতা; নিখিল ভারত কংগ্রেসের কলকাতা অধিবেশনে বাংলায় বক্তৃতা দানকারী',
    ),
    Person(
      name: 'মনোরমা বসু (মাসীমা)',
      duration: 'গ্রাম: নরোত্তমপুর',
      description: 'স্বদেশী আন্দোলনের নেত্রী ও বরিশাল মাতৃমন্দির আশ্রম তথা স্কুলের প্রতিষ্ঠাতা',
    ),
    Person(
      name: ' সতীশচন্দ্র গুহঠাকুরতা',
      duration: '(১৮৮৮ - জুলাই ১৯৬০)',
      description: 'প্রসিদ্ধ গ্রন্থাগারবিজ্ঞানী',
    ),
    Person(
      name: 'প্রফুল্লমুখী বসু',
      duration: '(৩ নভেম্বর ১৮৯৮ - ৮ এপ্রিল ১৯৮৩)',
      description: 'পকংগ্রেসকর্মী ও কুমিল্লার সারদা দেবী মহিলা সমিতির সম্পাদিকা',
    ),
    Person(
      name: 'মনীন্দ্রকুমার ঘোষ',
      duration: '(৫ জানুয়ারি ১৮৯৮ - ১৬ আগস্ট ১৯৮৯)',
      description: 'কিংবদন্তি প্রধান শিক্ষক; বিখ্যাত ব্যাকরণবিদ; সহশিক্ষা প্রচলনের বিশিষ্ট ব্যক্তিত্ব; বিখ্যাত কবি শঙ্খ ঘোষের পিতা।',
    ),
    Person(
      name: 'রাজেন্দ্রনারায়ণ গুহঠাকুরতা',
      duration: '(১৮৯২ - ২১ জুলাই ১৯৪৫)',
      description: 'কপ্রসিদ্ধ ব্যায়ামবীর; ‘All Bengal Physical culture’ নামে সমিতির প্রতিষ্ঠাতা।',
    ),
    Person(
      name: 'সাবিত্রী দত্ত',
      duration: '(১৯০৩ - ১৩ মে ১৯৭৯)',
      description: 'ভারতীয় পঞ্জিকার প্রথম ইংরেজি অনুবাদক',
    ),
    Person(
      name: 'নরেন্দ্রনাথ দত্ত',
      duration: '(১৯০৪ - ১৯৬৭)',
      description: 'ক্রিমিনী ও শিল্প সারহিত্যক।',
    ),
    Person(
      name: 'বীরেন্দ্রচন্দ্র দত্ত',
      duration: '(৮ জুন ১৯০৪ - ২০ মার্চ ১৯৬২)',
      description: 'বিশিষ্ট বিজ্ঞানী; কলকাতা বিশ্ববিদ্যালয়ে ফলিত রসায়ন বিভাগের প্রথম অধ্যাপক।',
    ),
    Person(
      name: 'কুমুদবিহারী গুহঠাকুরতা',
      duration: '(জন্ম ১৯০৬ - ২৮ এপ্রিল ১৯৭৪)',
      description: 'ইংরেজ বিরোধী বিপ্লবী কর্মকর্তের জন্য ২০ বছর কারাদ- ভোগকারী।',
    ),
    Person(
      name: 'কুমুদবিহারী গুহঠাকুরতা',
      duration: '(১০.৭.১৯১৮ - ১.১.১৯৯৯)',
      description: 'বৈমানিক বীরত্বব্যঞ্জক-অংশগ্রহণের প্রতিষ্ঠাতা।',
    ),
    Person(
      name: ' ড. জ্যোতির্ময় গুহঠাকুরতা',
      duration: '(১০ জুলাই ১৯২০ - ২০ মার্চ ১৯৭১)',
      description: 'প্রখ্যাত শিক্ষাবিদ ও ১৯৭১ এর শহীদ বুদ্ধিজীবী।',
    ),
    Person(
      name: 'সত্যপ্রিয় ঘোষ',
      duration: '(২৩.৯.১৯২৪ - ১৫.১০.২০০৩)',
      description: 'বাংলা ভাষাতত্ত্বে পুরস্কারপ্রাপ্ত একাডেমিসিয়ান; দুই বাংলার জনপ্রিয় কবি শব্দ গোষের বড় ভাই।',
    ),
    Person(
      name: 'ক্ষীরোদনট্ট',
      duration: '(১৮৮৮ - ১২ মার্চ ১৯৭৫)',
      description: 'বিখ্যাত সেফ-নামক; বরিশালে কংগ্রেস অধিবেশনে অখিলীয়দের দত্ত ডিগ্রি ডিপ্লি উপহার দিয়েছিলেন - যুদ্ধের দামের গান, কীর্তাম নটীর ছোট বাজনা আর বাদাম চাল।',
    ),
    Person(
      name: 'হেমচন্দ্র ঘোষ',
      duration: '(২৪ অক্টোবর ১৯৮৪ - ৩১ অক্টোবর ১৯৯০)',
      description: 'স্ত্রীশিক্ষার বিশিষ্ট বিদ্ব-এর এবং মুক্তিসংগ্রাম প্রতিষ্ঠাতা।',
    ),
    Person(
      name: 'দেদেবপ্রসাদ ঘোষ',
      duration: '(১৫ মার্চ ১৮৯৮ - ১৪ জুলাই ১৯৮০)',
      description: 'খ্যাতনামা গণিতজ্ঞ, সুপন্ডিত শিক্ষাবিদ ও রাজনীতিবিদ; বিপ্লবী শান্তিসুধা মোহের ভাই',
    ),
    Person(
      name: 'নির্মলচন্দ্র ঘোষ',
      duration: '(অক্টোবর ১৯০০- ১০ অক্টোবর ১৯৯৭)',
      description: 'স্বাধীনতা সংগ্রামী।',
    ),
    Person(
      name: 'চারুচন্দ্র ঘোষ',
      duration: '(৫ নভেম্বর ১৯০৫ - ৫ ফেব্রুয়ারি ১৯৯৯)',
      description: 'হকারসার্ভিসে ও সরকারের উচ্চপদস্থ কর্মচারী।',
    ),
    Person(
      name: 'শান্তিসুধা ঘোষ',
      duration: '(১৯.১২.১৯০৭ - ৭.৫.১৯৯১)',
      description: 'বিশিষ্ট শিক্ষাবিদ ও স্বাধীনতা সংগ্রামী; পিতা বরিশাল প্রজামেলার কলেজের অধ্যাপক ফেলোশিপ মোহ; মাতা কবি অন্নদাসুন্দরী।',
    ),
    Person(
      name: 'কালীকিঙ্কর ঘোষ দস্তিদার',
      duration: '(১৬ জুন ১৯০৮ - ২৮ সেপ্টেম্বর ১৯৭২)',
      description: 'বিশিষ্ট চিকিৎসী।',
    ),
    Person(
      name: 'গায়ত্রী দেবী',
      duration: '(১২ অক্টোবর ১৯০৮ - ৮ সেপ্টেম্বর ১৯৯৫)',
      description: 'প্রথম ভারতীয় তথ্য বলয়নী যিনি আমেরিকার রেনভ প্রচারে কাজে আত্মনিয়োগ করেছিলেন।',
    ),
    Person(
      name: 'বিজনবালা ঘোষদস্তিদার',
      duration: '(১৯ অক্টোবর ১৯২১ - ৯ জুন ১৯৮১)',
      description: 'বিখ্যাত সঙ্গীত শিল্পী।',
    ),
    Person(
      name: 'অরুন্ধতী দেবী',
      duration: '(১৯২৫ - ১৬ অক্টোবর ১৯৯০)',
      description: 'বিশিষ্ট চলচ্চিত্রভিনেত্রী, চিত্র পরিচালিকা ও রবীন্দ্রসঙ্গীতশিল্পী।',
    ),
    Person(
      name: 'জোছন দস্তিদার',
      duration: '(১৬ জুন ১৯৩১ - ১৬ জুলাই ১৯৯৮) ',
      description: 'বাংলা থিয়েটারে কেন্দ্র সমাজসচেতন শিল্পী ও নাট্যকার।',
    ),
    Person(
      name: 'শঙ্কু মহারাজ',
      duration: '(৭.৩.১৯৩১ - ১৮.১০.২০০৪) ',
      description: 'বাংলা নাট্যেতে সুপ্রতিষ্ঠ প্রথম নাট্যশিল্পক; আসল নাম জ্যোতিরিন্দ্র মোহ দর্শিকার।',
    ),
    Person(
      name: 'আমির আলী',
      duration: '( সপ্তম শতক)',
      description: 'মোগল আমলের বরকা চন্দ্রদ্বীপের এলাকা আধিকৃত একজনা মুসলিম লেখক; গ্রাম: চাঁদল।',
    ),
    Person(
      name: 'নসুরেশচন্দ্র দাশগুপ্ত',
      duration: '(১৯০২-৯.১২.১৯৯৩)',
      description: 'রাজনীতিক; ভারতের কমিউনিস্ট পার্টির সদস্য; গ্রাম: বলিয়াকান্দি।',
    ),
    Person(
      name: 'মহানামব্রত ব্রহ্মচারী',
      duration: '(২৫.১২.১৯০৪-১৮.১০.১৯৯৯)',
      description: 'বিখ্যাত সাধুপুরুষ; গ্রাম: বলিয়াকান্দি।',
    ),
    Person(
      name: 'ফণিভূষণ দাশগুপ্ত',
      duration: '(২৭ ডিসেম্বর ১৯০৭ - ১২ ফেব্রুয়ারি ১৯৪২)',
      description: 'বৃটিশ বিরোধী স্বাধীনতা সংগ্রামী; গ্রাম: বলিয়াকান্দি।',
    ),
    Person(
      name: 'সৈয়দ আজিজুল হক  (নান্না মিয়া)',
      duration: '(১ অক্টোবর ১৯১২ - ১৯৯৯)',
      description: '১৯৫৪ সালের যুক্তফ্রন্ট সরকারের প্রথম মন্ত্রী ও পরে রাজ্যপাল; গ্রাম: চাঁদল।',
    ),
    Person(
      name: ' নরেশচন্দ্র সেনগুপ্ত',
      duration: '(৭ আগস্ট ১৯১৬ - ২০ নভেম্বর ১৯৮৯)',
      description: 'শিক্ষকতার স্থায়ের জন্য ১৯৮৭-ই. ভারতীয় জাতীয় পুরস্কার গ্রহীত; গ্রাম: বলিয়াকান্দি।',
    ),
    Person(
      name: 'ইসহাক চাখারী',
      duration: '(১৯১৭ - ??)',
      description: 'লেখক; গ্রাম: চাঁদল।',
    ),
    Person(
      name: 'নূরুদ্দীন আহমদ',
      duration: '(বিংশ শতক)',
      description: 'লেখক; গ্রাম: কেরেল।',
    ),
    Person(
      name: 'জ্জ্যোতিষচন্দ্র রায়়',
      duration: '(২০ এপ্রিল ১৮৯৯ - ২৪ নভেম্বর ১৯৭০)',
      description: "'শব্দক্রম' উপাধিতে ভূষিত আত্মজীবনী প্রণয়নকারীদের; গ্রাম: নলোয়াখন্দ।",
    ),
    Person(
      name: 'পপ্রবোধচন্দ্র গুহ',
      duration: '(১৮৮৫ - ২ জুলাই ১৯৬৯)',
      description: 'নাট্যাভিনেতা ও নির্দেশক; নাট্য-নির্দেশনা নামে বিষয় রচনার প্রতিষ্ঠাতা।',
    ),
    // Add more persons here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "বানারীপাড়ার প্রখ্যাত ব্যক্তিত্ব",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'textFont',
          ),
        ),
        backgroundColor: Colors.green,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(

        padding: const EdgeInsets.all(16.0),
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green.shade200),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                title: Text(
                  persons[index].name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'textFont',
                  ),
                ),
                subtitle: Text(
                  persons[index].duration,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontFamily: 'textFont',
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      persons[index].description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        fontFamily: 'textFont',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}