import 'package:flutter/material.dart';

import '../../screens/payment_screen.dart';
import '../../utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor(),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(12),
              child: const Icon(
                Icons.bookmark,
                color: Colors.white,
                size: 25,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 110),
                  child: const Text(
                    'Enroll Now',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
