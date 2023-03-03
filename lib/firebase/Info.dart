class Info {
  late String name;
  late String number;
  late String address;

  Info({required this.name, required this.number, required this.address});

  Info.fromMap(Map<String, dynamic> json) {
    name = json['name'];
    number = json['number'];
    address = json['address'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = this.name;
    data['number'] = this.number;
    data['address'] = this.address;
    return data;
  }
}
