import '../models/food_item.dart';

/// Sample food data for the restaurant menu
class FoodData {
  static const List<String> categories = [
    'All',
    'Pizza',
    'Burgers',
    'Drinks',
    'Desserts',
    'Pasta',
    'Salads',
  ];

  static const List<FoodItem> foodItems = [
    FoodItem(
      name: "Cheese Pizza",
      price: 1200,
      rating: 4.5,
      description: "Classic cheese pizza with mozzarella and tomato sauce. Made with fresh ingredients and baked to perfection in our wood-fired oven.",
      image: "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg",
      category: "Pizza",
    ),
    FoodItem(
      name: "Beef Burger",
      price: 1500,
      rating: 4.7,
      description: "Juicy beef patty with cheese and lettuce in a soft bun. Served with crispy fries and our special sauce.",
      image: "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg",
      category: "Burgers",
    ),
    FoodItem(
      name: "Margherita Pizza",
      price: 1350,
      rating: 4.6,
      description: "Traditional Italian pizza with fresh basil, mozzarella, and premium tomato sauce. A timeless classic.",
      image: "https://images.pexels.com/photos/2147491/pexels-photo-2147491.jpeg",
      category: "Pizza",
    ),
    FoodItem(
      name: "Chicken Burger",
      price: 1300,
      rating: 4.4,
      description: "Grilled chicken breast with avocado, lettuce, and mayo. Healthy and delicious choice.",
      image: "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg",
      category: "Burgers",
    ),
    FoodItem(
      name: "Cola",
      price: 200,
      rating: 4.2,
      description: "Refreshing cola drink served ice cold. Perfect complement to any meal.",
      image: "https://images.pexels.com/photos/50593/coca-cola-cold-drink-soft-drink-coke-50593.jpeg",
      category: "Drinks",
    ),
    FoodItem(
      name: "Chocolate Cake",
      price: 800,
      rating: 4.8,
      description: "Rich chocolate cake with creamy frosting. Made fresh daily by our pastry chef.",
      image: "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg",
      category: "Desserts",
    ),
    FoodItem(
      name: "Pepperoni Pizza",
      price: 1450,
      rating: 4.9,
      description: "Spicy pepperoni with mozzarella cheese and our signature tomato sauce. A crowd favorite.",
      image: "https://images.pexels.com/photos/2619970/pexels-photo-2619970.jpeg",
      category: "Pizza",
    ),
    FoodItem(
      name: "Fresh Orange Juice",
      price: 350,
      rating: 4.3,
      description: "Freshly squeezed orange juice with pulp. Packed with vitamin C and natural goodness.",
      image: "https://images.pexels.com/photos/1414651/pexels-photo-1414651.jpeg",
      category: "Drinks",
    ),
    FoodItem(
      name: "Pasta Carbonara",
      price: 1250,
      rating: 4.6,
      description: "Creamy pasta with bacon, eggs, and parmesan cheese. Authentic Italian recipe.",
      image: "https://images.pexels.com/photos/4518843/pexels-photo-4518843.jpeg",
      category: "Pasta",
    ),
    FoodItem(
      name: "Caesar Salad",
      price: 900,
      rating: 4.1,
      description: "Fresh romaine lettuce with croutons, parmesan, and Caesar dressing. Light and healthy option.",
      image: "https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg",
      category: "Salads",
    ),
    FoodItem(
      name: "Tiramisu",
      price: 750,
      rating: 4.7,
      description: "Classic Italian dessert with coffee-soaked ladyfingers and mascarpone cream.",
      image: "https://images.pexels.com/photos/6880219/pexels-photo-6880219.jpeg",
      category: "Desserts",
    ),
    FoodItem(
      name: "Iced Coffee",
      price: 400,
      rating: 4.4,
      description: "Cold brew coffee served with ice and a touch of cream. Perfect pick-me-up drink.",
      image: "https://images.pexels.com/photos/302894/pexels-photo-302894.jpeg",
      category: "Drinks",
    ),
  ];

  /// Get filtered food items by category
  static List<FoodItem> getFoodItemsByCategory(String category) {
    if (category == 'All') {
      return foodItems;
    }
    return foodItems.where((item) => item.category == category).toList();
  }
}