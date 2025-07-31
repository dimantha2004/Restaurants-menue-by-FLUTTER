/// Model class representing a food item in the restaurant menu
class FoodItem {
  final String name;
  final int price; // Price in LKR
  final double rating;
  final String description;
  final String image;
  final String category;

  const FoodItem({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.image,
    required this.category,
  });
}