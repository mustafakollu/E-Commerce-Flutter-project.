class Model {
  //this class for read json file at assets/sample.json
  List<Items> items;

  Model({this.items});

  Model.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      // ignore: deprecated_member_use
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String name;
  String price;
  String description;

  Items({this.name, this.price, this.description});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    return data;
  }
}
