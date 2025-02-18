import 'package:flutter/material.dart';

class RatingLessonsSection extends StatelessWidget {
  const RatingLessonsSection({super.key, required this.lessonsCount, required this.reviewsCount, required this.rating});

  final int lessonsCount;
  final int reviewsCount;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Icons.star,
              color: Colors.orange,
              size: 20,
            ),
            const SizedBox(width: 2),
            Text(rating.toString(),
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            const SizedBox(width: 2),
            Text('($reviewsCount)',
                style: const TextStyle(color: Colors.grey, fontSize: 11)),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.play_circle_outline,
              color: Colors.grey,
              size: 20,
            ),
            const SizedBox(width: 2),
            Text('$lessonsCount Lessons',
                style: const TextStyle(color: Colors.grey, fontSize: 11)),
          ],
        ),
      ],
    );
  }
}
