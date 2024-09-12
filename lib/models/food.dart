class Food {
  final String name;
  final String desc;
  final String image;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food(
      {required this.desc,
      required this.category,
      required this.image,
      required this.name,
      required this.price,
      required this.availableAddons});
}

enum FoodCategory { burgers, salads, sides, drinks, fries }

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
