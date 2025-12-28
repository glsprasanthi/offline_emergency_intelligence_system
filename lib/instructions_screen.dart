import 'package:flutter/material.dart';
import 'instructions_service.dart';

class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Instructions'),
      ),
      body: FutureBuilder(
        future: InstructionsService.getInstructions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
            return const Center(child: Text('No instructions available'));
          }

          final instructions = snapshot.data as List<Map<String, dynamic>>;

          return ListView.builder(
            itemCount: instructions.length,
            itemBuilder: (context, index) {
              final item = instructions[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    item['title'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(item['content']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
