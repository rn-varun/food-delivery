import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class CustomBar extends StatelessWidget {
  final TabController tabController;

  const CustomBar({super.key, required this.tabController});

  // this function is to extract text from enum FoodCategory and pass those to TabBar
  List<Tab> _buildCategoryTabs() {
    // FoodCategory is enum with bunch of categories as values like { burgers, salads, sides ...}
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split(".").last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: TabBar(
          labelColor: Colors.amber,
          dividerColor: Colors.amber,
          controller: tabController,
          tabs: _buildCategoryTabs()),
    );
  }
}
