import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SettingsScreen()),
        );
      },
      child: Container(
        color: Colors.green.shade100,
        alignment: Alignment.center,
        child: const Text(
          'Settings',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
