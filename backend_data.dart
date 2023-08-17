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
      desc: '4 bed dd Union Luxury Apartments in Etihad Town Phase - I, Raiwind Road, Lahore, is designed to be a vertical residential community that will deliver the dream lifestyle for residents.',
      location: '36 Street, Lahore, Pak',
      picture: ImageConstants.ss2,
      price: 5000,
      bedroom: 2,
      bath: 2,
      size: '1000 sqft'),
  Ad(
      type: 'Appartment',
      desc: '4 bed dd Union Luxury Apartments in Etihad Town Phase - I, Raiwind Road, Karachi, is designed to be a vertical residential community that will deliver the dream lifestyle for residents.',
      location: '19 Street, Karachi, Pak',
      picture: ImageConstants.ss3,
      price: 9000,
      bedroom: 3,
      bath: 2,
      size: '1500 sqft'),
  Ad(
      type: 'Flat',
      desc:'4 bed dd Union Luxury Apartments in Etihad Town Phase - I, Raiwind Road, Islamabad, is designed to be a vertical residential community that will deliver the dream lifestyle for residents.',
      location: '12 Street, Islamabad, Pak',
      picture: ImageConstants.ss7,
      price: 3000,
      bedroom: 4,
      bath: 4,
      size: '2000 sqft'),
];
