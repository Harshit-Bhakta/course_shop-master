import 'package:course_shop/presentation/utils/app_colors.dart';
import 'package:course_shop/presentation/utils/constants.dart';
import 'package:course_shop/presentation/widgets/payment/show_animation.dart';
import 'package:flutter/material.dart';

import '../widgets/payment/check_sign.dart';
import '../widgets/payment/clipped_container.dart';
import '../widgets/payment/done_button.dart';
import '../widgets/payment/invoice.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool willShowConfetti = true;
  @override
  Widget build(BuildContext context) {
    if(willShowConfetti){
      showConfetti(context);
      willShowConfetti = false;
    }
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
              ),
              const ClippedContainer(
                child: Invoice(),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const DoneButton()
            ],
          ),
          const CheckSign(),
        ],
      ),
    );
  }
}






