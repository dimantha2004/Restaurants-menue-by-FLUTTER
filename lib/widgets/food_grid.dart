import 'package:flutter/material.dart';
import '../models/food_item.dart';
import 'food_card.dart';

/// Responsive grid view for displaying food items
class FoodGrid extends StatelessWidget {
  final List<FoodItem> foodItems;

  const FoodGrid({
    super.key,
    required this.foodItems,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine number of columns based on screen width
        final screenWidth = constraints.maxWidth;
        int crossAxisCount;
        double childAspectRatio;
        
        if (screenWidth > 800) {
          crossAxisCount = 3; // 3 columns for large screens
          childAspectRatio = 0.85;
        } else if (screenWidth > 600) {
          crossAxisCount = 2; // 2 columns for medium screens
          childAspectRatio = 0.9;
        } else {
          crossAxisCount = 1; // 1 column for small screens
          childAspectRatio = 0.75;
        }
        
        return GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return FoodCard(foodItem: foodItems[index]);
          },
        );
      },
    );
  }
}