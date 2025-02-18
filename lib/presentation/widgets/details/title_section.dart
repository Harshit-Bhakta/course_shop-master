import 'package:flutter/material.dart';

class TitleSectionOfDetails extends StatelessWidget {
  const TitleSectionOfDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          Text(
            'Details',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
    );
  }
}
