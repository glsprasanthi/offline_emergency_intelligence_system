import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContactsScreen extends StatelessWidget {
  const EmergencyContactsScreen({super.key});

  Future<void> _callNumber(BuildContext context, String number) async {
    final Uri uri = Uri.parse('tel:$number');

    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        _showError(context);
      }
    } catch (_) {
      _showError(context);
    }
  }

  void _showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Unable to make the call on this device'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contacts'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _contactTile(context, 'Emergency (All-in-One)', '112'),
          _contactTile(context, 'Ambulance', '108'),
          _contactTile(context, 'Police', '100'),
          _contactTile(context, 'Fire', '101'),
          _contactTile(context, 'Women Helpline', '181'),
          _contactTile(context, 'Disaster Management', '1077'),
        ],
      ),
    );
  }

  Widget _contactTile(BuildContext context, String title, String number) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const Icon(Icons.call, color: Colors.red),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(number),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () => _callNumber(context, number),
          child: const Text('Call'),
        ),
      ),
    );
  }
}
