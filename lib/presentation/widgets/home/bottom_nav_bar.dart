import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/bottom_navbar_selected_bar_margins.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor(),
          unselectedItemColor: Colors.grey.shade400,
          showSelectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: (int selectedIndex) {
            setState(() {
              _selectedIndex = selectedIndex;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline_sharp,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: 'favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: 'notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_rounded,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'profile',
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Row(
              children: List<Widget>.generate(4, (index) {
            return Container(
              height: 5,
              width: MediaQuery.of(context).size.width * 0.1,
              margin: marginer(index, context),
              decoration: BoxDecoration(
                color: index == _selectedIndex
                    ? AppColors.primaryColor()
                    : Colors.transparent,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            );
          })),
        ),
      ],
    );
  }
}
