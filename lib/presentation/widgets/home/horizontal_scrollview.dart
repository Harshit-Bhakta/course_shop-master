import 'package:course_shop/presentation/utils/list_of_courseviews.dart';
import 'package:course_shop/presentation/utils/mouse_horizontal_scroll_config.dart';
import 'package:flutter/material.dart';

class HorizontalScrollview extends StatelessWidget {
  const HorizontalScrollview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomScrollBehavior(),
      child: SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(20, (index) {
                    if (index.isOdd) {
                      return const SizedBox(width: 20);
                    }else{
                      return listOfCourseviews[(index~/2)%3];
                    }
                  })
                ),
              ),
            ),
          )
      ),
    );
  }
}
