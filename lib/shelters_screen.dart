import 'package:flutter/material.dart';

class SheltersScreen extends StatelessWidget {
  const SheltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final shelters = [
      'Community Hall – Sector 3',
      'Government School – Main Road',
      'Primary Health Center – Block A',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Nearby Shelters')),
      body: ListView.builder(
        itemCount: shelters.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.location_on),
            title: Text(shelters[index]),
          );
        },
      ),
    );
  }
}
