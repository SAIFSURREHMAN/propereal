class Ad {
  String? type;
  String? desc;
  String? location;
  double? price;
  String? picture;
  Ad({
    this.type,
    this.desc,
    this.location,
    this.price,
    this.picture,
  });

  Ad.fromBackend(Map<String, dynamic> map) {
    type = map['type'];
    desc = map['desc'];
    location = map['location'];
    price = map['price'];
    picture = map['picture'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['desc'] = this.desc;
    data['location'] = this.location;
    data['price'] = this.price;
    data['picture'] = this.picture;
    return data;
  }
}
