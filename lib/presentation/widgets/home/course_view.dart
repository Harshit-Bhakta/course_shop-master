import 'package:course_shop/presentation/screens/details_screen.dart';
import 'package:course_shop/presentation/utils/app_colors.dart';
import 'package:course_shop/presentation/utils/constants.dart';
import 'package:course_shop/presentation/widgets/home/rating_lessons_section.dart';
import 'package:flutter/material.dart';

class CourseView extends StatelessWidget {
  const CourseView(
      {super.key,
      required this.courseTitle,
      required this.lessonsCount,
      required this.reviewsCount,
      required this.rating,
      required this.courseImage});

  final String courseTitle;
  final String courseImage;
  final int lessonsCount;
  final int reviewsCount;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen()));
      },
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Course icon and title
            courseLogo(),
            courseName(context),
            // Participants
            participants(),
      
            const Divider(
              color: Colors.black12,
            ),
            // Rating and lessons
            RatingLessonsSection(
              lessonsCount: lessonsCount,
              reviewsCount: reviewsCount,
              rating: rating,
            ),
          ],
        ),
      ),
    );
  }

  Row participants() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(avatarPath[0]),
              ),
              Positioned(
                left: 18,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(avatarPath[1]),
                ),
              ),
              Positioned(
                left: 36,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(avatarPath[2]),
                ),
              ),
              Positioned(
                left: 54,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: AppColors.primaryColor(),
                  child: const Text(
                    '+20',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        const Text('Participant', style: TextStyle(fontSize: 13)),
      ],
    );
  }

  Widget courseName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Text(
        courseTitle,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }

  Container courseLogo() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(courseImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
