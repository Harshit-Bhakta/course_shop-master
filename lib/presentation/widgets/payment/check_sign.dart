import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CheckSign extends StatelessWidget {
  const CheckSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.sizeOf(context).height * 0.1,
      left: 0,
      right: 0,
      child: CircleAvatar(
        radius: MediaQuery.sizeOf(context).height * 0.09,
        backgroundColor: const Color(0xFFE7E8ED),
        child: CircleAvatar(
          radius: MediaQuery.sizeOf(context).height * 0.075,
          backgroundColor: AppColors.secondColor(),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: MediaQuery.sizeOf(context).height * 0.1,
          ),
        ),
      ),
    );
  }
}
