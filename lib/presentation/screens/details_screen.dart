
import 'package:course_shop/presentation/widgets/details/section_header.dart';
import 'package:course_shop/presentation/widgets/details/title_section.dart';
import 'package:flutter/material.dart';

import '../widgets/details/bottom_navbar.dart';
import '../widgets/details/course_overview.dart';
import '../widgets/details/videos_list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleSectionOfDetails(),
            CourseOverview(),
            SectionHeader(heading: 'Video'),
            VideosList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}




