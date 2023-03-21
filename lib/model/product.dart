class Product {
  Meta? meta;
  List<Products>? products;

  Product({this.meta, this.products});

  Product.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meta {
  int? count;
  int? limit;
  int? page;
  String? nextUrl;

  Meta({this.count, this.limit, this.page, this.nextUrl});

  Meta.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    limit = json['limit'];
    page = json['page'];
    nextUrl = json['next_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['limit'] = this.limit;
    data['page'] = this.page;
    data['next_url'] = this.nextUrl;
    return data;
  }
}

class Products {
  String? name;
  String? productUrl;

  Products({this.name, this.productUrl});

  Products.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    productUrl = json['product_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['product_url'] = this.productUrl;
    return data;
  }
}
