import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'shelter_map_screen.dart';

class SheltersScreen extends StatelessWidget {
  const SheltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nearby Shelters"),
      ),

      // 🔹 Button to open Google Maps
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.map),
        label: const Text("View on Map"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ShelterMapScreen(),
            ),
          );
        },
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('shelters')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No shelters available"));
          }

          final shelters = snapshot.data!.docs;

          return ListView.builder(
            itemCount: shelters.length,
            itemBuilder: (context, index) {
              final data =
                  shelters[index].data() as Map<String, dynamic>;

              return ListTile(
                leading: const Icon(Icons.location_on),
                title: Text(
                  data['name'] ?? 'Unknown Shelter',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${data['area']} • Capacity: ${data['capacity']}",
                ),
                trailing: Text(
                  data['status'] ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
