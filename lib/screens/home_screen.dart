import 'package:flutter/material.dart';
import '../data/food_data.dart';
import '../widgets/category_list.dart';
import '../widgets/food_grid.dart';
import '../models/food_item.dart';

/// Home screen containing the main restaurant menu interface
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  List<FoodItem> displayedItems = FoodData.foodItems;

  /// Handle category selection and filter food items
  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
      displayedItems = FoodData.getFoodItemsByCategory(category);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: const Text('Restaurant Menu'),
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
        foregroundColor: const Color(0xFF1A1A1A),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            color: const Color(0xFFE0E0E0),
          ),
        ),
      ),
      body: Column(
        children: [
          // Header section with welcome text
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover Our Menu',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF1A1A1A),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Explore our delicious dishes and find your perfect meal',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF616161),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          
          // Category selection list
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CategoryList(
              categories: FoodData.categories,
              selectedCategory: selectedCategory,
              onCategorySelected: _onCategorySelected,
            ),
          ),
          
          // Food items grid with padding
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: FoodGrid(foodItems: displayedItems),
            ),
          ),
        ],
      ),
    );
  }
}