import 'package:flutter_confetti/flutter_confetti.dart';

void showConfetti(context) async{
  Future.delayed(const Duration(seconds: 1), () {
    Confetti.launch(
      context,
      options: const ConfettiOptions(
        particleCount: 50,
        startVelocity: 30,
        spread: 360,
        ticks: 180,
        decay: 0.7,
        gravity: 0,
        x: 0.5,
        y: 0.18,
      ),
    );
  });
}