import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import 'invoice_info.dart';

class Invoice extends StatelessWidget {
  const Invoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.14,
        ),
        const Text(
          'Payment Success',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ),
        Text(
          "\$35.00",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: AppColors.secondColor(),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
        ),
        const InvoiceInfo(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            width: MediaQuery.sizeOf(context).width * 0.8,
            height: MediaQuery.sizeOf(context).height * 0.1,
            fit: BoxFit.fitWidth,
            barcode,
          ),
        )
      ],
    );
  }
}
