class item1 {
  String? name;
  double? price;
  String? photoUrl;
  String? categoryUrl;
  String? vendorUrl;

  item1(
      {this.name, this.price, this.photoUrl, this.categoryUrl, this.vendorUrl});

  item1.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    photoUrl = json['photo_url'];
    categoryUrl = json['category_url'];
    vendorUrl = json['vendor_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['photo_url'] = this.photoUrl;
    data['category_url'] = this.categoryUrl;
    data['vendor_url'] = this.vendorUrl;
    return data;
  }
}
