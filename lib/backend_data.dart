import 'ad_model.dart';
import 'image_constant.dart';

final List<String> imagePaths = [
  ImageConstants.ss1,
  ImageConstants.ss2,
  ImageConstants.ss3,
  ImageConstants.ss4,
  ImageConstants.ss5,
  ImageConstants.ss6,
];
List<Ad> AdList = [
  Ad(
      type: 'House',
      desc: '2 bed dd',
      location: 'Lahore.',
      picture: ImageConstants.ad1,
      price: 9999,
      bedroom: 2,
      bath: 2,
      size: '1000 sqft'),
  Ad(
      type: 'Appartment',
      desc: '3 bed dd',
      location: 'Karachi.',
      picture: ImageConstants.ad1,
      price: 99999,
      bedroom: 3,
      bath: 2,
      size: '1500 sqft'),
  Ad(
      type: 'Flat',
      desc:
          '4 bed dd Union Luxury Apartments in Etihad Town Phase - I, Raiwind Road, Lahore, is designed to be a vertical residential community that will deliver the dream lifestyle for residents.',
      location: 'Karachi.',
      picture: ImageConstants.ad1,
      price: 59999,
      bedroom: 4,
      bath: 4,
      size: '2000 sqft'),
];
