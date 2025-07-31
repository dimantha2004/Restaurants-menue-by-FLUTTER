import 'package:flutter/material.dart';

/// Widget for displaying rating stars with numeric value
class RatingStars extends StatelessWidget {
  final double rating;
  final double size;

  const RatingStars({
    super.key,
    required this.rating,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Star icon with gradient
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFFFD700), Color(0xFFFFA000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Icon(
            Icons.star,
            color: Colors.white,
            size: size,
          ),
        ),
        
        const SizedBox(width: 4),
        
        // Rating value
        Text(
          rating.toString(),
          style: TextStyle(
            fontSize: size * 0.7,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF424242),
          ),
        ),
      ],
    );
  }
}