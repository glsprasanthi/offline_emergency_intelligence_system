import 'package:cloud_firestore/cloud_firestore.dart';

class InstructionsService {
  static Future<List<Map<String, dynamic>>> getInstructions() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('emergency_instructions')
        .get();

    return snapshot.docs.map((doc) => doc.data()).toList();
  }
}
