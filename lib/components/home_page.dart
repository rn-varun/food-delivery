import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/current_location.dart';
import 'package:food_delivery/components/custom_bar.dart';
import 'package:food_delivery/components/custom_drawer.dart';
import 'package:food_delivery/components/custom_sliver_app_bar.dart';
import 'package:food_delivery/components/desc_box.dart';
import 'package:food_delivery/components/food_tile.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late List<Food> menu;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: FoodCategory.values.length,
        vsync:
            this); // tab controller requires a length to know how many pages will be rendered
    Restaurant getMenu = Restaurant();
    menu = getMenu.menu;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          var food = categoryMenu[index];
          return FoodTile(food: food, onTap: () {});
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScolled) => [
                  CustomSliverAppBar(
                      title: CustomBar(tabController: _tabController),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          CurrentLocation(),
                          DescBox()
                        ],
                      ))
                ],
            body: TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(menu))));
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }
}
