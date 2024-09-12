import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.name),
                        Text(food.price.toString()),
                        Text(food.desc),
                      ],
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(food.image, height: 120),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
