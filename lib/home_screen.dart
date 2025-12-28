import 'package:flutter/material.dart';
import 'instructions_screen.dart';
import 'shelters_screen.dart';
import 'crowd_report_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emergency Mode')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button(context, 'Emergency Instructions', const InstructionsScreen()),
            _button(context, 'Nearby Shelters', const SheltersScreen()),
            _button(context, 'Crowd Report', const CrowdReportScreen()),
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context, String text, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 55),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => screen),
          );
        },
        child: Text(text, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
