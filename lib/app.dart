
import 'package:course_shop/presentation/screens/home_screen.dart';
import 'package:course_shop/presentation/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class CourseShop extends StatelessWidget {
  const CourseShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Shop',
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE7E8ED),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height /890.2857142857143 * 20,
            fontWeight: FontWeight.w500,
            color: Colors.black87
          ),
          titleMedium: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height /890.2857142857143 *16,
            fontWeight: FontWeight.w400,
            color: Colors.black87
          ),
          titleSmall: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height /890.2857142857143 * 16,
            fontWeight: FontWeight.w400,
            color: Colors.black87
          ),
          labelMedium: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height /890.2857142857143 * 14,
            fontWeight: FontWeight.w400,
            color: Colors.black38
          ),
        ),
      ),
    );
  }
}
