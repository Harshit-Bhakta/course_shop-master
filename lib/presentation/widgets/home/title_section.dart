import 'package:course_shop/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class TitleSectionOfHome extends StatelessWidget {
  const TitleSectionOfHome({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20, top: 50, bottom: 30),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              foregroundImage: AssetImage(avatarPath[3]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    'Lets Learn to Smart',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
            const Spacer(),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.search,
              ),
            )
          ],
        ),
      ),
    );
  }
}
