import 'package:food_delivery/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
    // Burgers
    Food(
        desc: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        category: FoodCategory.burgers,
        image: "lib/images/burgers/burger1.webp",
        name: "Classic Cheese Burger",
        price: 259,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 49),
          Addon(name: "Extra Patty", price: 79),
        ]),
    Food(
        desc: "Grilled chicken breast with avocado, lettuce, tomato, and honey mustard sauce",
        category: FoodCategory.burgers,
        image: "lib/images/burgers/burger2.webp",
        name: "Grilled Chicken Burger",
        price: 299,
        availableAddons: [
          Addon(name: "Extra Avocado", price: 59),
          Addon(name: "Bacon", price: 69),
        ]),
    Food(
        desc: "A vegetarian patty with grilled veggies, topped with lettuce and hummus",
        category: FoodCategory.burgers,
        image: "lib/images/burgers/burger3.webp",
        name: "Veggie Delight Burger",
        price: 249,
        availableAddons: [
          Addon(name: "Extra Hummus", price: 39),
          Addon(name: "Grilled Mushrooms", price: 49),
        ]),
    Food(
        desc: "Double beef patties, double cheddar, and BBQ sauce, served with lettuce and tomato",
        category: FoodCategory.burgers,
        image: "lib/images/burgers/burger4.webp",
        name: "Double BBQ Beef Burger",
        price: 379,
        availableAddons: [
          Addon(name: "Extra Bacon", price: 69),
          Addon(name: "Extra Patty", price: 99),
        ]),

    // Salads
    Food(
        desc: "Mixed greens with roasted beets, goat cheese, walnuts, and balsamic dressing",
        category: FoodCategory.salads,
        image: "lib/images/salad/salad4.webp",
        name: "Beet & Goat Cheese Salad",
        price: 199,
        availableAddons: [
          Addon(name: "Extra Walnuts", price: 29),
          Addon(name: "Extra Cheese", price: 49),
        ]),
    Food(
        desc: "Kale, spinach, quinoa, roasted sweet potatoes, and a tahini dressing",
        category: FoodCategory.salads,
        image: "lib/images/salad/salad1.webp",
        name: "Superfood Salad",
        price: 229,
        availableAddons: [
          Addon(name: "Extra Quinoa", price: 39),
          Addon(name: "Grilled Chicken", price: 69),
        ]),
    Food(
        desc: "Fresh mixed greens with avocado, cucumber, tomatoes, and lemon vinaigrette",
        category: FoodCategory.salads,
        image: "lib/images/salad/salad2.webp",
        name: "Mediterranean Avocado Salad",
        price: 189,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 69),
          Addon(name: "Feta Cheese", price: 49),
        ]),
    Food(
        desc: "Baby spinach, arugula, and kale with roasted vegetables and feta cheese",
        category: FoodCategory.salads,
        image: "lib/images/salad/salad3.webp",
        name: "Roasted Veggie Salad",
        price: 209,
        availableAddons: [
          Addon(name: "Extra Feta", price: 39),
          Addon(name: "Avocado", price: 59),
        ]),

    // Sides
    Food(
        desc: "Crispy fried mozzarella sticks served with marinara dipping sauce",
        category: FoodCategory.sides,
        image: "lib/images/sides/sides1.webp",
        name: "Mozzarella Sticks",
        price: 149,
        availableAddons: [
          Addon(name: "Extra Marinara Sauce", price: 29),
        ]),
    Food(
        desc: "Golden onion rings with a side of spicy dipping sauce",
        category: FoodCategory.sides,
        image: "lib/images/sides/sides2.webp",
        name: "Onion Rings",
        price: 129,
        availableAddons: [
          Addon(name: "Extra Spicy Sauce", price: 19),
        ]),
    Food(
        desc: "Cheesy jalapeño poppers served with ranch dipping sauce",
        category: FoodCategory.sides,
        image: "lib/images/sides/sides3.webp",
        name: "Cheesy Jalapeño Poppers",
        price: 169,
        availableAddons: [
          Addon(name: "Extra Ranch", price: 19),
        ]),
    Food(
        desc: "Crispy calamari with garlic aioli and lemon wedges",
        category: FoodCategory.sides,
        image: "lib/images/sides/sides4.webp",
        name: "Crispy Calamari",
        price: 199,
        availableAddons: [
          Addon(name: "Extra Garlic Aioli", price: 29),
        ]),

    // Drinks
    Food(
        desc: "A tropical blend of pineapple, orange, and coconut flavors, served in a chilled glass",
        category: FoodCategory.drinks,
        image: "lib/images/drinks/drinks1.webp",
        name: "Tropical Mocktail",
        price: 149,
        availableAddons: [
          Addon(name: "Extra Coconut", price: 19),
        ]),
    Food(
        desc: "A refreshing mojito with fresh mint, lime, and soda",
        category: FoodCategory.drinks,
        image: "lib/images/drinks/drinks2.webp",
        name: "Classic Mojito",
        price: 129,
        availableAddons: [
          Addon(name: "Extra Mint", price: 19),
        ]),
    Food(
        desc: "A vibrant berry smoothie with strawberries, blueberries, and banana",
        category: FoodCategory.drinks,
        image: "lib/images/drinks/drinks3.webp",
        name: "Berry Blast Smoothie",
        price: 169,
        availableAddons: [
          Addon(name: "Extra Berries", price: 29),
        ]),
    Food(
        desc: "Fresh lemonade with a twist of mint and honey",
        category: FoodCategory.drinks,
        image: "lib/images/drinks/drinks4.webp",
        name: "Mint Lemonade",
        price: 119,
        availableAddons: [
          Addon(name: "Extra Honey", price: 19),
        ]),

    // Fries
    Food(
        desc: "Classic golden fries with a light sprinkle of salt",
        category: FoodCategory.fries,
        image: "lib/images/fries/fries1.webp",
        name: "Classic French Fries",
        price: 89,
        availableAddons: [
          Addon(name: "Extra Salt", price: 9),
        ]),
    Food(
        desc: "Peri Peri fries with a spicy seasoning for an extra kick",
        category: FoodCategory.fries,
        image: "lib/images/fries/fries2.webp",
        name: "Peri Peri Fries",
        price: 119,
        availableAddons: [
          Addon(name: "Extra Spicy Seasoning", price: 19),
        ]),
    Food(
        desc: "Loaded fries topped with melted cheese, jalapeños, and sour cream",
        category: FoodCategory.fries,
        image: "lib/images/fries/fries3.webp",
        name: "Loaded Cheese Fries",
        price: 149,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 29),
        ]),
    Food(
        desc: "Sweet potato fries with a light cinnamon sugar dusting",
        category: FoodCategory.fries,
        image: "lib/images/fries/fries4.webp",
        name: "Sweet Potato Fries",
        price: 129,
        availableAddons: [
          Addon(name: "Extra Cinnamon", price: 19),
        ]),
  ];

  // getters
  List<Food> get menu => _menu;

  //operations

  // add to car

  // remove from cart

  // get total price of car

  // get total number of items in cart

  // clear cart

}
