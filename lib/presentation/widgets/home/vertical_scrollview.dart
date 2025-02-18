import 'package:course_shop/presentation/utils/list_of_courseListviews.dart';
import 'package:course_shop/presentation/widgets/home/rating_lessons_section.dart';
import 'package:flutter/material.dart';

class VerticalScrollview extends StatelessWidget {
  const VerticalScrollview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(20, (index) {
          if(index.isOdd){
            return const SizedBox(height: 10);
          }else{
            return listOfCourseListviews[(index~/2)%3];
          }
        })
      ),
    );
  }
}

class CourseListView extends StatelessWidget {
  const CourseListView({
    super.key, required this.courseTitle, required this.courseImage, required this.lessonsCount, required this.reviewsCount, required this.rating,
  });

  final String courseTitle;
  final String courseImage;
  final int lessonsCount;
  final int reviewsCount;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(courseImage),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(courseTitle),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(4.0),
          child: RatingLessonsSection(
            lessonsCount: lessonsCount,
            reviewsCount: reviewsCount,
            rating: rating,
          ),
        ),
      ),
    );
  }
}
