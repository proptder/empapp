import 'package:flutter/material.dart';

class SmallAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const SmallAppButton({required this.onPressed, required this.buttonText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF0F0159),
        minimumSize: const Size(60, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
