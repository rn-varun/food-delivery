import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          ),
        ),
        contentPadding: const EdgeInsets.all(20),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade600,
        )
      ),
    );
  }
}
