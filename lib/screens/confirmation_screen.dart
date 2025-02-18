import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const ConfirmationScreen({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,  // Custom background color
      appBar: AppBar(title: const Text("Confirmation Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: $name", style: const TextStyle(fontSize: 18)),
            Text("Email: $email", style: const TextStyle(fontSize: 18)),
            Text("Phone: $phone", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,      // Custom button background color
              foregroundColor: Colors.white,     // Custom text color
            ),
            child: const Text("Go Back"),
          ),
          ],
        ),
      ),
    );
  }
}
