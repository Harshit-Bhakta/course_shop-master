import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.heading,
  });

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
            onPressed: (){},
            child: Text(
                'View All',
                style: Theme.of(context).textTheme.labelMedium
            ),
          ),
        ],
      ),
    );
  }
}
