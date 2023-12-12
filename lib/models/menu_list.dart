// MenuList prototype
class MenuList {
  late String name;
  late String price;
  late String imagePath;
  late double rating;
  
  MenuList({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  double get _rating => rating;
}