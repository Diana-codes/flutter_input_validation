import 'package:flutter/material.dart';

// A reusable custom text field widget
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;

// Constructor with required and optional parameters
  CustomTextField({
    required this.controller,
    required this.labelText,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText,
      ),
    );
  }
}
