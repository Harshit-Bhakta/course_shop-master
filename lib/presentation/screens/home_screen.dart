import 'package:course_shop/presentation/utils/app_colors.dart';
import 'package:course_shop/presentation/utils/constants.dart';
import 'package:course_shop/presentation/widgets/home/bottom_nav_bar.dart';
import 'package:course_shop/presentation/widgets/home/course_view.dart';
import 'package:course_shop/presentation/widgets/home/rating_lessons_section.dart';
import 'package:flutter/material.dart';

import '../utils/bottom_navbar_selected_bar_margins.dart';
import '../widgets/home/current_course_overview.dart';
import '../widgets/home/horizontal_scrollview.dart';
import '../widgets/home/section_header.dart';
import '../widgets/home/title_section.dart';
import '../widgets/home/vertical_scrollview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).height);
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          TitleSectionOfHome(name: 'Christiana Amandla'),
          CurrentCourseOverview(
            courseTitle: 'Mathematics Course',
            date: '19 Nov 2023',
            completedCount: 20,
            hoursSpent: 455,
          ),
          SectionHeader(heading: 'Popular Courses',),
          HorizontalScrollview(),
          SectionHeader(heading: 'Popular Courses',),
          VerticalScrollview()
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}




