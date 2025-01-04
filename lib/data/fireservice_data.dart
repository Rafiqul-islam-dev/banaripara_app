class FireService {
  final String name;
  final String location;
  final String phone;
  final String? imageUrl;
  final String mapUrl;

  FireService({
    required this.name,
    required this.location,
    required this.phone,
    this.imageUrl,
    required this.mapUrl,
  });
}

final List<FireService> fireServiceList = [
  FireService(
    name: 'Dhaka Fire service',
    location: 'Banaripara',
    phone: '01714963096',
    imageUrl: 'https://example.com/image1.jpg',
    mapUrl: 'https://maps.google.com/?q=Banaripara+Fire+Service,Barishal',
  ),
  FireService(
    name: 'Barishal Fire service',
    location: 'Barishal Sadar',
    phone: '01714963097',
    imageUrl: null,
    mapUrl: 'https://maps.google.com/?q=Barishal+Fire+Service',
  ),
  FireService(
    name: 'Banaripara Fire service',
    location: 'Banaripara Upazila',
    phone: '01714963098',
    imageUrl: 'https://example.com/image3.jpg',
    mapUrl: 'https://maps.google.com/?q=Banaripara+Upazila+Fire+Service',
  ),
  FireService(
    name: 'Banaripara Fire service',
    location: 'Banaripara Upazila',
    phone: '01714963098',
    imageUrl: 'https://example.com/image3.jpg',
    mapUrl: 'https://maps.google.com/?q=Banaripara+Upazila+Fire+Service',
  ),
  FireService(
    name: 'Banaripara Fire service',
    location: 'Banaripara Upazila',
    phone: '01714963098',
    imageUrl: 'https://example.com/image3.jpg',
    mapUrl: 'https://maps.google.com/?q=Banaripara+Upazila+Fire+Service',
  ),
];