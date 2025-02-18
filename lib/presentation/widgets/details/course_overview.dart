import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CourseOverview extends StatelessWidget {
  const CourseOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Students',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0,top: 12,bottom: 20),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage(avatarPath[index]),
                  ),
                );
              }),
            ),
            Text(
              'Photoshop Editing Course',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            Text(
              'A representation that can convey the three dimensional aspect of a design through a two-dimensional medium.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.play_circle_outline,
                      color: Colors.grey,
                      size: 23,
                    ),
                    const SizedBox(width: 3),
                    Text('30 Lessons',
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 23,
                    ),
                    const SizedBox(width: 3),
                    Text('13h 30min',
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
