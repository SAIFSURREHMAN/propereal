import 'package:flutter/material.dart';

class Ad {
  String? type;
  String? desc;
  String? location;
  double? price;
  String? picture;
  int? bedroom;
  int? bath;
  String? size;
  Ad({
    this.type,
    this.desc,
    this.location,
    this.price,
    this.picture,
    this.bedroom,
    this.bath,
    this.size,
  });

  Ad.fromBackend(Map<String, dynamic> map) {
    type = map['type'];
    desc = map['desc'];
    location = map['location'];
    price = map['price'];
    picture = map['picture'];
    bedroom = map['bedroom'];
    bath = map['bath'];
    size = map['size'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['desc'] = this.desc;
    data['location'] = this.location;
    data['price'] = this.price;
    data['picture'] = this.picture;
    data['bedroom'] = this.bedroom;
    data['bath'] = this.bath;
    data['size'] = this.size;

    return data;
  }
}
