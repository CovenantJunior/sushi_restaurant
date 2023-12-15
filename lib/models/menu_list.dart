// MenuList prototype
class MenuList {
  late String name;
  late String price;
  late String imagePath;
  late String rating;
  late String desc;
  
  MenuList({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.desc
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
  String get _desc => desc;
}