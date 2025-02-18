import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CurrentCourseOverview extends StatelessWidget {
  const CurrentCourseOverview({
    super.key,
    required this.courseTitle,
    required this.date,
    required this.completedCount,
    required this.hoursSpent,
  });

  final String courseTitle;
  final String date;
  final int completedCount;
  final int hoursSpent;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.maxFinite,
        height: MediaQuery.sizeOf(context).height * 0.23,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        decoration: BoxDecoration(
          color: AppColors.primaryColor(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: MediaQuery.sizeOf(context).height /890.2857142857143 *20),
          child: Column(
            children: [
              titleAndDate(context),
              SizedBox(
                  height:
                      MediaQuery.sizeOf(context).height * 0.23 * 0.33 * 0.4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  completedSection(context),
                  Container(
                    width: 3,
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    color: Colors.white54,
                  ),
                  hoursSpentSection(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row hoursSpentSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: MediaQuery.sizeOf(context).height * 0.033,
          backgroundColor: Colors.white54,
          child: CircleAvatar(
            radius: MediaQuery.sizeOf(context).height * 0.014,
            backgroundColor: AppColors.primaryColor(),
            child: Icon(
              Icons.chevron_left_outlined,
              color: Colors.white,
              size: MediaQuery.sizeOf(context).height * 0.028,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hours Spent',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height /890.2857142857143 *5),
            Text(
              hoursSpent.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }

  Row completedSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: MediaQuery.sizeOf(context).height * 0.033,
          backgroundColor: Colors.white54,
          child: CircleAvatar(
            radius: MediaQuery.sizeOf(context).height * 0.014,
            backgroundColor: AppColors.primaryColor(),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: MediaQuery.sizeOf(context).height * 0.023,
            ),
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).height /890.2857142857143 *5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Completed',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height /890.2857142857143 *5),
            Text(
              completedCount.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }

  Container titleAndDate(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.sizeOf(context).height * 0.23 * 0.33,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).height /890.2857142857143 *14.0),
        child: Row(
          children: [
            Text(
              courseTitle,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Spacer(),
            Container(
              height: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                color: AppColors.primaryColor(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.black54,
                    size: MediaQuery.sizeOf(context).height * 0.024,
                  ),
                  const SizedBox(width: 3),
                  Text(date)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
