import 'package:course_shop/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.popUntil(context, (route) => route.isFirst);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor(),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.4,
          vertical: 15,
        ),
        child: Text(
          'Done',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
