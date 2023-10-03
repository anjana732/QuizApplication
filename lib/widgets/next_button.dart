import 'package:flutter/material.dart';
import '../constants.dart';
class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: neutral,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          'Next Question',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
