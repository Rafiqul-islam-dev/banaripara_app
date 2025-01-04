class UnionData {
  final String name;
  final String population;
  final String area;
  final String familyCount;
  final String villageCount;
  final String moujaCount;
  final String hatBajarCount;
  final String jogajog;
  final String primaryGovtCount;
  final String privateGovtCount;
  final String higherSchool;
  final String madrasha;
  final String educationRate;
  final String votingCenter;
  final List<String> villages;
  final List<String> markets;
  final List<String> educationalInstitutions;
  final String imageAssetPath; // Added image path field

  UnionData({
    required this.name,
    required this.population,
    required this.area,
    required this.familyCount,
    required this.villageCount,
    required this.moujaCount,
    required this.hatBajarCount,
    required this.jogajog,
    required this.primaryGovtCount,
    required this.privateGovtCount,
    required this.higherSchool,
    required this.madrasha,
    required this.educationRate,
    required this.votingCenter,
    required this.villages,
    required this.markets,
    required this.educationalInstitutions,
    required this.imageAssetPath, // Added to constructor
  });
}

// Sample data
final Map<String, UnionData> unionDataMap = {
  "বিশারকান্দি  ইউনিয়ন": UnionData(
    name: "বিশারকান্দি ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["গ্রাম ১", "গ্রাম ২", "গ্রাম ৩"],
    markets: ["বাজার ১", "বাজার ২"],
    educationalInstitutions: ["স্কুল ১", "কলেজ ১", "মাদ্রাসা ১"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),

  "চাখার  ইউনিয়ন": UnionData(
    name: "চাখার  ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["বড় চাউলাকাঠী", "জাঙ্গালিয়া", "বাগ্রা","চালিতাবাড়ী","পূর্ব জিরার কাঠী","বড় ভৈৎসর","ছোট চাউলাকাঠী","ছোট ভৈৎসর","দরিকর","বলহার","চাখার","আশুরাইল","খলিসাকোটা","বলিয়ারকাঠী","ঘাটাপাড়া","সোনাহার","চিড়াপাড়া","নবগ্রাম"],
    markets: ["খলিশাকোটা বাজার", "চাখার হাট ও বাজার","বড় চাউলাকাঠী বাজার","বড় ভৈৎসর নতুন হাট","বড় ভৈৎসর নয়াবাজার","বলহার ডাক্তারেরহাট (মানিক মিয়ারহাট)","মীরেরহাট ও বাজার","সোনাহার হক সাহেবের হাট"],
    educationalInstitutions: ["চাখার কলেজ", "কলেজ ১", "সোনাহার এ. এইচ দাখিল মাদরাসা"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),

  "ইলুহার  ইউনিয়ন": UnionData(
    name: "ইলুহার  ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["গ্রাম ১", "গ্রাম ২", "গ্রাম ৩"],
    markets: ["বাজার ১", "বাজার ২"],
    educationalInstitutions: ["স্কুল ১", "কলেজ ১", "মাদ্রাসা ১"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),

  "সৈয়দকাঠি  ইউনিয়ন": UnionData(
    name: "সৈয়দকাঠি  ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["গ্রাম ১", "গ্রাম ২", "গ্রাম ৩"],
    markets: ["বাজার ১", "বাজার ২"],
    educationalInstitutions: ["স্কুল ১", "কলেজ ১", "মাদ্রাসা ১"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),
  "উদয়কাঠি  ইউনিয়ন": UnionData(
    name: "উদয়কাঠি  ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["গ্রাম ১", "গ্রাম ২", "গ্রাম ৩"],
    markets: ["বাজার ১", "বাজার ২"],
    educationalInstitutions: ["স্কুল ১", "কলেজ ১", "মাদ্রাসা ১"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),
  "বাইশারী  ইউনিয়ন": UnionData(
    name: "বাইশারী  ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["গ্রাম ১", "গ্রাম ২", "গ্রাম ৩"],
    markets: ["বাজার ১", "বাজার ২"],
    educationalInstitutions: ["স্কুল ১", "কলেজ ১", "মাদ্রাসা ১"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),

  "বানারীপাড়া  ইউনিয়ন": UnionData(
    name: "বানারীপাড়া  ইউনিয়ন",
    population: "25,000",
    area: "১৪.৭০ (বর্গ কিঃ মিঃ)",
    familyCount: "১৯,৯৬০ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "০৯টি।",
    moujaCount: "০৬ টি",
    hatBajarCount: "০৩ টি।",
    jogajog: "বাস/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "০",
    privateGovtCount: "০",
    higherSchool: "২টি",
    madrasha: "৫টি",
    educationRate: "৫৫%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["কাজলাহার", "ব্রাহ্মণকাঠী", "জম্বদ্বীপ", "মাছরং", "রাজ্জাকপুর", "আলতা", "গাভা-০৭", "গাভা-০৮", "নরেরকাঠী"],
    markets: ["০"],
    educationalInstitutions: ["০"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),

  "সলিয়াবাকপুর  ইউনিয়ন": UnionData(
    name: "সলিয়াবাকপুর  ইউনিয়ন",
    population: "25,000",
    area: "15.5",
    familyCount: "৩০২৮৮ জন (প্রায়) (২০১১ সালের আদম শুমারি অনুযায়ী)",
    villageCount: "১৯ টি",
    moujaCount: "১৯ টি",
    hatBajarCount: "৭ টি।",
    jogajog: "বাস/মাহিন্ড্রা/রিক্সা/ ভ্যান ইত্যাদি",
    primaryGovtCount: "১৮টি",
    privateGovtCount: "৫টি",
    higherSchool: "৫টি",
    madrasha: "৬টি",
    educationRate: "৮৭%। (২০১০ এর শিক্ষা জরীপ অনুযায়ী)",
    votingCenter: "12",
    villages: ["গ্রাম ১", "গ্রাম ২", "গ্রাম ৩"],
    markets: ["বাজার ১", "বাজার ২"],
    educationalInstitutions: ["স্কুল ১", "কলেজ ১", "মাদ্রাসা ১"],
    imageAssetPath: 'images/banaripara1.jpg', // Add your image path here
  ),
  // Add data for other unions similarly
};